+function ($) {

	var WSCT = function (element, options) {
		this.options =
		this.strategy =
		this.matches =
		this.roundsPlayed =
		this.dontMove =
		this.qstIndex =
		this.startTime =
		this.endTime =
		this.completedSet =
		this.$element = null;

		this.init('wsct', element, options);
	};

	WSCT.DEFAULTS = {
		'variants': 'variants',
		'answers': 'answers',
		'question': 'question',
		'init_vars': [
			{
				'cnt': 1,
				'type': 'triangle',
				'color': 'red'
			},
			{
				'cnt': 2,
				'type': 'star',
				'color': 'green'
			},
			{
				'cnt': 3,
				'type': 'cross',
				'color': 'yellow'
			},
			{
				'cnt': 4,
				'type': 'square',
				'color': 'blue'
			}
		],
		'positions': {
			'1': ['1'],
			'2': ['2', '3'],
			'3': ['4', '5', '6'],
			'4': ['4', '6', '7', '8']
		},
		'colors': ['red', 'green', 'blue', 'yellow'],
		'types': ['triangle', 'star', 'square', 'cross'],
		'card_template': '<div id="<%= card_id_prefix %><%= num %>" class="<%= card_class %> <%= color %>" data-index="<%= num %>" data-color="<%= color_num %>" data-type="<%= type_num %>" data-cnt="<%= cnt %>"><div class="front"><%= spots %></div></div>',
		'spot_template': '<div class="<%= spot_prefix %><%= position %> <%= type %>"></div>',
		'card_id_prefix': 'card',
		'card_class': 'card',
		'spot_prefix': 'spot',
		'answer_template': '<div id="<%= answer_id_prefix %><%= num %>" class="answ <%= answer_class %>" data-index="<%= num %>"></div>',
		'answer_id_prefix': 'answ',
		'answer_class': 'empty',
		'question_prefix': 'qst',
		'message_id': 'msg',
		'rounds': 6,
		'allSets': 'CFNCFN',
		'matches_before_change': 10,
		'strategy_list': ['color', 'type', 'cnt'],
		'strategy_random': false,
		'question_list': [
			0x211, 0x144, 0x312, 0x131, 0x224,
			0x441, 0x314, 0x133, 0x244, 0x432,
			0x321, 0x113, 0x342, 0x421, 0x213,
			0x334, 0x122, 0x433, 0x114, 0x431,
			0x322, 0x243, 0x422, 0x313, 0x124,
			0x412, 0x343, 0x134, 0x222, 0x141,
			0x234, 0x121, 0x333, 0x444, 0x221,
			0x414, 0x332, 0x423, 0x231, 0x344,
			0x111, 0x323, 0x434, 0x212, 0x123,
			0x442, 0x331, 0x413, 0x242, 0x424,
			0x311, 0x223, 0x132, 0x214, 0x341,
			0x233, 0x142, 0x411, 0x143, 0x232,
			0x324, 0x443, 0x112, 0x241,           // <<== 64
			0x211, 0x144, 0x312, 0x131, 0x224,
			0x441, 0x314, 0x133, 0x244, 0x432,
			0x321, 0x113, 0x342, 0x421, 0x213,
			0x334, 0x122, 0x433, 0x114, 0x431,
			0x322, 0x243, 0x422, 0x313, 0x124,
			0x412, 0x343, 0x134, 0x222, 0x141,
			0x234, 0x121, 0x333, 0x444, 0x221,
			0x414, 0x332, 0x423, 0x231, 0x344,
			0x111, 0x323, 0x434, 0x212, 0x123,
			0x442, 0x331, 0x413, 0x242, 0x424,
			0x311, 0x223, 0x132, 0x214, 0x341,
			0x233, 0x142, 0x411, 0x143, 0x232,
			0x324, 0x443, 0x112, 0x241			// <<== 128!
		],
		//mask of cards. 0 x 1 2 3 = 1(begins with 1, color = red), 2(type = star), 3(spots count)
		//huge overflow but easy to calc
		// debug option
		'debug': true
  	};

	WSCT.prototype.init = function (type, element, options) {
		this.$element = $(element);
		this.options  = this.getOptions(options);
		this.dontMove = false;
		this.qstIndex = 0;
		this.log = [];
        this.completedSet = "";
		this.buildVariants(this.options.init_vars);

		this.prepareForTest();
	};

    WSCT.prototype.getDefaults = function () {
      	return WSCT.DEFAULTS;
    };

    WSCT.prototype.getOptions = function (options) {
      	options = $.extend({}, this.getDefaults(), this.$element.data(), options);

      	return options;
    };

	WSCT.prototype.buildVariants = function (vars) {
		var variants = this.$element.find('.' + this.options.variants),
			cards = '';

		_.each(vars, function (card, index) {
			cards += this.buildCard(index, this.options.card_id_prefix, card.type, card.color, card.cnt);
		}, this);

		variants.html(cards);
    };

    WSCT.prototype.buildCard = function (indx, prefix, card_type, card_color, spot_cnt) {
		var spots = '';
		_.each(this.options.positions[spot_cnt], function(spot) {
			spots += _.template(this.options.spot_template, {
				'spot_prefix': this.options.spot_prefix,
				'position': spot,
				'type': card_type
			});
		}, this);

		return _.template(this.options.card_template, {
			'card_id_prefix': prefix,
			'num': indx,
			'card_class': this.options.card_class,
			'color': card_color,
			'spots': spots,
			'color_num': _.indexOf(this.options.colors, card_color),
			'type_num': _.indexOf(this.options.types, card_type),
			'cnt': spot_cnt
		});
    };

	WSCT.prototype.buildAnswerPlaces = function () {
		var answers = this.$element.find('.' + this.options.answers),
			places = '';

		for (var i = 0; i < this.options.init_vars.length; i++) {
			places += _.template(this.options.answer_template, {
				'answer_id_prefix': this.options.answer_id_prefix,
				'num': i,
				'answer_class': this.options.answer_class
			});
		}

		answers.html(places);
	};

    WSCT.prototype.showPreQuestion = function () {
		this.$element.find('.' + this.options.answers + ' .answ').off('click');

		var qst = this.$element.find('.' + this.options.question);
		qst.html('<div class="empty card-select"><div class="front"><div class="spot1 sign"></div></div></div>');

        this.$element.find('.' + this.options.question + ' .empty').on('click', _.bind(function(e) {
			e.preventDefault();
			this.$element.find('.' + this.options.question + ' .empty').off('click');

			var answers = this.$element.find('.' + this.options.answers + ' .answ');
			answers.off('click');
			answers.on('click', _.bind(function(e) {
				e.preventDefault();
				if (this.dontMove)
					return;

				this.endTime = new Date().getTime();
				var x = $(e.currentTarget).offset().left - 2;
				var y = $(e.currentTarget).offset().top - 4;

				var target = this.$element.find('.' + this.options.question + ' #' + this.options.question_prefix + '0');
				target.css('left', target.offset().left).css('top', target.offset().top);
				target.addClass('card-fly');
				// this.$element.find('.' + this.options.answers + ' .empty').addClass('hidden');
				var variant = this.$element.find('.' + this.options.variants + ' #' + this.options.card_id_prefix + e.currentTarget.dataset.index);
				target.animate(
					{
						left: x,
						top: y
					},
					{
						complete: _.bind(function () {
							this.stepDone(variant, target, e.currentTarget);
						}, this)
					}
				);

			}, this));

			this.buildQuestion();

		}, this));


	};

	WSCT.prototype.buildQuestion = function () {
		var card_type = card_color = '',
			cnt = 1;
		//get list or random generation
		if (this.options.question_list.length == 0) {
			//random
			card_type = this.options.types[Math.floor((Math.random() * this.options.types.length))];
			card_color = this.options.colors[Math.floor((Math.random() * this.options.colors.length))];
			cnt = Math.floor((Math.random()*4)) + 1;
		} else {
			var mask = this.options.question_list[this.qstIndex];
			cnt = mask & 15; // lower 4 bits = count
			mask = mask >>> 4;
			card_type = this.options.types[(mask & 15) - 1];
			mask = mask >>> 4;
			card_color = this.options.colors[(mask & 15) - 1];

			this.qstIndex++;
			if (this.qstIndex > this.options.question_list.length - 1) {
				this.qstIndex = 0;
			}
		}

		var qst = this.$element.find('.' + this.options.question);
		var card = this.buildCard(0, this.options.question_prefix, card_type, card_color, cnt);
		qst.html(card);

		this.$element.find('.' + this.options.answers + ' .answ').addClass('card-select');
		this.startTime = new Date().getTime();
	};

	WSCT.prototype.startTest = function () {
		// initiate strategy
		this.chooseStrategy();
		this.matches = 0;
		this.roundsPlayed = 0;

		//Setup events
		this.$element.find('#' + this.options.message_id).hide();


		this.showPreQuestion();

	};

	WSCT.prototype.stepDone = function (target, qst, selected) {
		//set semaphore
		this.dontMove = true;

		// copy card face to answer place

		$(selected).html(qst[0].innerHTML);
		$(selected).attr('class', 'answ card-select ' + qst[0].className.replace('card-fly', ''));

		// check answer with strategy
		var result = 'correct';
		if (target.data()[this.strategy] == qst.data()[this.strategy]) {
			this.matches++;
		} else {
			result = 'fail';
			this.matches = 0; //reset correct answers count for this set
		}


		target.addClass(result);
		qst.addClass(result);

		//clear select class on cards
		this.$element.find('.' + this.options.answers + ' .answ').removeClass('card-select');

		//text show
		var msg = this.$element.find('#' + this.options.message_id);
		msg.css('left', qst.offset().left).css('top', qst.offset().top - 27);
		msg.removeClass('msg-fail msg-correct').addClass('msg-'+result);
		msg.html(result);
		msg.show();

		this.log.push({
			'strategy': this.strategy,
			'qst': {'color': qst.data().color, 'type': qst.data().type, 'cnt': qst.data().cnt},
			'answer': {'color': target.data().color, 'type': target.data().type, 'cnt': target.data().cnt},
			'correct': result == 'correct',
			'time': this.endTime - this.startTime
		});

		//delay for next step
		setTimeout(_.bind(function () {
			var finished = false;
			//check matches in round and total rounds played
			if (this.matches == this.options.matches_before_change) {

				this.matches = 0;
                this.completedSet += this._translate(this.strategy, false);
				this.roundsPlayed++;

				if ((this.roundsPlayed == this.options.rounds) || (this.log.length == this.options.question_list.length)) {
					finished = true;
					this.finishTest();
				}

				//strategy change
				this.chooseStrategy();
			}

			//or card deck is empty
            if (this.log.length == this.options.question_list.length) {
                finished = true;
                this.finishTest();
			}

			this.nextStep(target, qst, msg, finished);

		}, this), 1000);

	};

	WSCT.prototype.nextStep = function (target, qst, msg, finished) {
		//drop semaphore
		this.dontMove = false;
		target.removeClass('correct fail');
		qst.removeClass('correct fail');
		msg.hide();

		// this.$element.find('.' + this.options.answers + ' .empty').removeClass('hidden');

		if (!finished) {
			this.showPreQuestion();
		}
	};

	WSCT.prototype.chooseStrategy = function () {
		if (this.options.strategy_random) {
			this.strategy = this.options.strategy_list[Math.floor((Math.random()*this.options.strategy_list.length))]
		} else {
			//first time select
			var indx = 0;
			if (this.strategy != null) {
				indx =_.indexOf(this.options.strategy_list, this.strategy);
				indx++;
				if (indx > this.options.strategy_list.length - 1) {
					indx = 0;
				}
			}

			this.strategy = this.options.strategy_list[indx];
		}

	};

	WSCT.prototype.prepareForTest = function () {
		var answers = this.$element.find('.' + this.options.answers);
		answers.html('<button id="start" type="button" class="btn">Start test</button>');
		this.$element.find('.' + this.options.answers + ' #start').on('click', _.bind(function(e) {
			e.preventDefault();
			$(e.currentTarget).off('click');

			this.buildAnswerPlaces();
			this.startTest();
		}, this));


	};

	WSCT.prototype.finishTest = function () {

		this.$element.find('.' + this.options.variants + ' .card').off('click');
		this.$element.find('.' + this.options.question).html('');
		var answers = this.$element.find('.' + this.options.answers);
		answers.html('<div class="finished msg-correct">test finished</div>');

		var qst = this.$element.find('.' + this.options.question);
		qst.html('<button id="results" type="button" class="btn">Show results</button>');
		this.$element.find('.' + this.options.question + ' #results').on('click', _.bind(function(e) {
			e.preventDefault();
			$(e.currentTarget).off('click');
			this.showResults();
		}, this));

	};

	// result analyze
	WSCT.prototype.showResults = function () {
		//clear workspace
		var dropPlace = this.$element.find('.' + this.options.question);

		var table = '<table class="res-table"><thead><tr>'+
			'<th>Category</th><th>Resp. Count</th><th>Avg. Resp. Time</th><th>Correct Resp. Count</th><th>Avg. Correct Resp. Time</th>' +
			'<th>Error Resp. Count</th><th>Avg. Error Resp. Time</th><th>Persev. Resp. Count</th><th>Avg. Persev. Resp. Time</th>' +
			'<th>Persev. Error Resp. Count</th><th>Avg. Persev. Error Resp. Time</th><th>Unique Error Resp. Count</th><th>Avg. Unique Error Resp. Time</th><th>Failure to Maintain Set</th>' +
			'</tr></thead>'+'' +
			'<tbody>';

		var principe = '',
			log_text = '',
			prev_strat = this.log[0].strategy,
			prev_preseverate = false,
			prev_incorrect = '',
			j,
			correct_resp_in_set = 0,
			matches = '',
			res = {
				'strategy': this.log[0].strategy,
				'resp_cnt': 1,
				'resp_time': this.log[0].time,
				'correct_cnt': this.log[0].correct ? 1 : 0,
				'correct_time': this.log[0].correct ? this.log[0].time : 0,
				'error_cnt': this.log[0].correct ? 0 : 1,
				'error_time': this.log[0].correct ? 0 : this.log[0].time,
				'persev_resp': 0,
				'persev_time': 0,
				'persev_resp_err': 0,
				'persev_resp_err_time': 0,
				'uniq_err': this._getMatches(this.log[0]) == '' ? 1 : 0,
				'uniq_err_time': this._getMatches(this.log[0]) == '' ? this.log[0].time : 0,
				'failure_set_cnt': 0
			},
			total = {
				'resp_cnt': 0,
				'resp_time': 0,
				'correct_cnt': 0,
				'correct_time': 0,
				'error_cnt': 0,
				'error_time': 0,
				'persev_resp': 0,
				'persev_time': 0,
				'persev_resp_err': 0,
				'persev_resp_err_time': 0,
                'uniq_err': 0,
                'uniq_err_time': 0,
				'failure_set_cnt': 0
			};

        if (this.getOptions().debug) {
            console.log('#1) ' + this.log[0].strategy + ' - ' + this._getMatches(this.log[0]) + ' - ' + this.log[0].correct + ' - ');
        }

		for (var i = 1; i < this.log.length; i++) {
			log_text = '';
			matches = this._getMatches(this.log[i]);

			//strategy changed?
			if (this.log[i].strategy != prev_strat) {
                correct_resp_in_set = 0;
				principe = prev_strat;

				// table row flush
				table += this._buildResultRow(res);

				total['resp_cnt'] += res['resp_cnt'];
				total['resp_time'] += res['resp_time'];
				total['correct_cnt'] += res['correct_cnt'];
				total['correct_time'] += res['correct_time'];
				total['error_cnt'] += res['error_cnt'];
				total['error_time'] += res['error_time'];
				total['persev_resp'] += res['persev_resp'];
				total['persev_time'] += res['persev_time'];
				total['persev_resp_err'] += res['persev_resp_err'];
				total['persev_resp_err_time'] += res['persev_resp_err_time'];
				total['uniq_err'] += res['uniq_err'];
				total['uniq_err_time'] += res['uniq_err_time'];
				total['failure_set_cnt'] += res['failure_set_cnt'];

				res = {
					'strategy': this.log[i].strategy,
					'resp_cnt': 0,
					'resp_time': 0,
					'correct_cnt': 0,
					'correct_time': 0,
					'error_cnt': 0,
					'error_time': 0,
					'persev_resp': 0,
					'persev_time': 0,
					'persev_resp_err': 0,
					'persev_resp_err_time': 0,
                    'uniq_err': 0,
                    'uniq_err_time': 0,
					'failure_set_cnt': 0
				};
			}


			if (!this.log[i].correct) {
				//unambiguous
				if (matches.length == 1) {
					if (principe == '') {
						principe = matches;
						log_text = 'unamb';
					} else {

						//principe changed within strategy?
						if ((matches == prev_incorrect) && (matches != principe)) {
							j = i + 1;
							var breaked = true;
							while (j < this.log.length) {
								if (this._getMatches(this.log[j]).indexOf(matches) == -1) {
									break;
								}
								if (matches == this._getMatches(this.log[j])) {
									breaked = false;
									break;
								}
								j++;
							}

							if (!breaked) {
								principe = matches;
							}

						}

						prev_incorrect = matches;

						if (matches == principe) {
							log_text = 'p';
							prev_preseverate = true;
						} else {
							prev_preseverate = false;
						}
					}
				}

				if (prev_preseverate) {
					j = i + 1;
					while (j < this.log.length) {
						if (!this.log[j].correct) {
							if (this._getMatches(this.log[j]).indexOf(principe) > -1) {
								log_text = 'p';
							}
							break;
						}
						j++;
					}

					if (log_text != 'p') {
						prev_preseverate = false;
					}
				}

				//P
				if ((this.log[i].strategy != prev_strat) && (prev_strat == principe) && matches.length == 1) {
					log_text = 'p';
                    prev_preseverate = true;
                    principe = matches;
				}

				if ((correct_resp_in_set >= 5) && (this.log[i].strategy == prev_strat)) {
					correct_resp_in_set = 0;
					res['failure_set_cnt']++;
				} else {
                    correct_resp_in_set = 0;
				}

			} else {
				if (this.log[i].strategy == prev_strat) {
					correct_resp_in_set++;
				} else {
					correct_resp_in_set = 1;
				}

				prev_incorrect = '';
				if (prev_preseverate) {
					j = i + 1;
					while (j < this.log.length) {
						if (!this.log[j].correct) {
							if ((this._getMatches(this.log[j]).indexOf(principe) > -1) && (this._getMatches(this.log[i]).indexOf(principe) > -1)) {
								log_text = 'p';
							}
							break;
						}
						j++;
					}

					if (log_text != 'p') {
						prev_preseverate = false;
					}
				}

			}

			prev_strat = this.log[i].strategy;

			res['resp_cnt']++;
			res['resp_time'] += this.log[i].time;
			res['correct_cnt'] += this.log[i].correct ? 1 : 0;
			res['correct_time'] += this.log[i].correct ? this.log[i].time : 0;
			res['error_cnt'] += this.log[i].correct ? 0 : 1;
			res['error_time'] += this.log[i].correct ? 0 : this.log[i].time;
			res['persev_resp'] += log_text == 'p' ? 1 : 0;
			res['persev_time'] += log_text == 'p' ? this.log[i].time : 0;
			res['persev_resp_err'] += ((log_text == 'p') && (!this.log[i].correct)) ? 1 : 0;
			res['persev_resp_err_time'] += ((log_text == 'p') && (!this.log[i].correct)) ? this.log[i].time : 0;
			res['uniq_err'] += this._getMatches(this.log[i]) == '' ? 1 : 0;
			res['uniq_err_time'] += this._getMatches(this.log[i]) == '' ? this.log[i].time : 0;

			if (this.getOptions().debug) {
				console.log('#' + (i + 1) + ') ' + this.log[i].strategy + ' - ' + this._getMatches(this.log[i]) + ' - ' + this.log[i].correct + ' - ' + log_text + ' / ' + principe);
			}

		}

		total['resp_cnt'] += res['resp_cnt'];
		total['resp_time'] += res['resp_time'];
		total['correct_cnt'] += res['correct_cnt'];
		total['correct_time'] += res['correct_time'];
		total['error_cnt'] += res['error_cnt'];
		total['error_time'] += res['error_time'];
		total['persev_resp'] += res['persev_resp'];
		total['persev_time'] += res['persev_time'];
		total['persev_resp_err'] += res['persev_resp_err'];
		total['persev_resp_err_time'] += res['persev_resp_err_time'];
        total['uniq_err'] += res['uniq_err'];
        total['uniq_err_time'] += res['uniq_err_time'];
		total['failure_set_cnt'] += res['failure_set_cnt'];

		table += this._buildResultRow(res);
		table += this._buildResultRow(total, true);

		table += '</tbody></table>';

		dropPlace.html(table);

        var answers = this.$element.find('.' + this.options.answers),
			completed;
        if (this.completedSet.length > 0) {
			completed = '<span class="msg-correct">' + this.completedSet + '</span>';
		}

		if (this.completedSet.length < this.options.allSets.length) {
			completed += '<span class="msg-fail">'+this.options.allSets.substring(this.completedSet.length)+'</span>';
		}

        answers.html('<div class="finished msg-correct">test finished ('+completed+')</div>');

	};

	WSCT.prototype._translate = function (str, full) {
		switch(str) {
			case 'color':
				return full ? 'Symbol Color' : 'C';
				break;
			case 'type':
				return full ? 'Symbol' : 'F';
				break;
			case 'cnt':
				return full ? 'Count' : 'N';
				break;
			default:
				return 'Total';
		}
	};

	WSCT.prototype._buildResultRow = function (params, total_sign) {

		return '<tr'+(total_sign === true ? ' class="total"' : '')+'><td>'+ this._translate(params.strategy, true) +'</td>' +
			'<td>'+ params.resp_cnt +'</td>' +
			'<td>'+ (params.resp_cnt != 0 ? Math.trunc(params.resp_time / params.resp_cnt) : '') + '</td>' +
			'<td>'+ params.correct_cnt +'</td>' +
			'<td>'+ (params.correct_cnt != 0 ? Math.trunc(params.correct_time / params.correct_cnt) : '') +'</td>' +
			'<td>'+ params.error_cnt +'</td>' +
			'<td>'+ (params.error_cnt != 0 ? Math.trunc(params.error_time / params.error_cnt) : '') +'</td>' +
			'<td>'+ params.persev_resp +'</td>' +
			'<td>'+ (params.persev_resp != 0 ? Math.trunc(params.persev_time / params.persev_resp) : '') +'</td>' +
			'<td>'+ params.persev_resp_err +'</td>' +
			'<td>'+ (params.persev_resp_err != 0 ? Math.trunc(params.persev_resp_err_time / params.persev_resp_err) : '') +'</td>' +
			'<td>'+ params.uniq_err +'</td>' +
			'<td>'+ (params.uniq_err != 0 ? Math.trunc(params.uniq_err_time / params.uniq_err) : '') +'</td>' +
			'<td>'+ params.failure_set_cnt +'</td></tr>';
	};

	WSCT.prototype._getMatches = function (block) {
		var matches = (block.qst.color == block.answer.color ? 'C' : '');
		matches += (block.qst.type == block.answer.type ? 'F' : '');
		matches += (block.qst.cnt == block.answer.cnt ? 'N' : '');
		return matches;
	};

    // ================
    var old = $.fn.wsct;

    $.fn.wsct = function (option) {
    	return this.each(function () {
			var $this   = $(this);
			var data    = $this.data('wsct');
			var options = typeof option == 'object' && option;

			if (!data && option == 'destroy') return;
			if (!data) $this.data('wsct', (data = new WSCT(this, options)));
			if (typeof option == 'string') data[option]();
	    });
    };

    $.fn.wsct.Constructor = WSCT;

    // WSCT NO CONFLICT
    // ===================

    $.fn.wsct.noConflict = function () {
      $.fn.wsct = old;
      return this;
    }

}(jQuery);