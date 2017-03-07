import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDispatch = (store) => (next) => (action) => {
  const dispatch = store.dispatch;
  console.log(store.getState());
  console.log(action);

  const result = dispatch(action);
  console.log(store.getState());

  return result;
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  const newStore = addLoggingToDispatch(store);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={newStore} />, root);
});
