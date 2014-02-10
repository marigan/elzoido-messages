# Copyright (C) 2014 marigan.net
#
# This file is part of elzoido-messages.
#
# elzoido-messages is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# elzoido-messages is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with elzoido-messages. If not, see <http://www.gnu.org/licenses/>.
#
# Authors: Michal Mocnak <michal@marigan.net>

angular.module('elzoido.messages').factory 'elzoidoMessages', ($rootScope) ->
  send: (type, title, message) ->
    $rootScope.$broadcast 'event:elzoido-messages-alert',
      type: type
      title: title
      message: message