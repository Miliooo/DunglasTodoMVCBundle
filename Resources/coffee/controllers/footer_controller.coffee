# This file is part of the DunglasTodoMVCBundle package.
#
# (c) Kévin Dunglas <dunglas@gmail.com>
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.

define [
  'chaplin'
  'views/footer_view'
], (Chaplin, FooterView) ->
  'use strict'
  
  class FooterController extends Chaplin.Controller
    initialize: (params) ->
      super
      @view = new FooterView collection: Chaplin.mediator.todos
