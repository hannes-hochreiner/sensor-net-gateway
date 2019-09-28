#include "ll.h"

result_t ll_insert(ll_t** ll, void *data) {
  if (ll == NULL) {
    return RESULT_ERROR;
  }

  ll_t* tmp = malloc(sizeof(ll_t));

  if (tmp == NULL) {
    return RESULT_ERROR;
  }

  tmp->data = data;
  tmp->next = *ll;
  *ll = tmp;

  return RESULT_OK;
}

result_t ll_remove(ll_t** ll, void *data) {
  if (ll == NULL) {
    return RESULT_ERROR;
  }

  for (ll_t *curr = *ll, *last = NULL; curr != NULL; last = curr, curr = curr->next) {
    if (curr->data == data) {
      ll_t* next = curr->next;

      free(curr);

      if (last != NULL) {
        last->next = next;
      } else {
        *ll = next;
      }

      return RESULT_OK;
    }
  }

  return RESULT_ERROR;
}

void ll_execute(ll_t* ll, ll_func_t func) {
  for (ll_t* curr = ll; curr != NULL; curr = curr->next) {
    (*func)(curr->data);
  }
}
