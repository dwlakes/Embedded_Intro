/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Add FirsName LastName>
 * @date <Add date >
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

/**
 * @brief Prints the elements of an array
 *
 * This function takes an array and its size as input and prints each element
 * of the array.
 *
 * @param test An array of unsigned char values
 * @param size The size of the array
 */
void print_array(unsigned char test[], int size) {
  for (int i = 0; i < size; i++) {
    printf("%d ", test[i]);
  }
  printf("\n");
}

/**
 * @brief Merges two subarrays of test[]
 *
 * @param test The array to be sorted
 * @param left The index of the left subarray
 * @param mid The index of the middle point
 * @param right The index of the right subarray
 */
void merge(unsigned char test[], int left, int mid, int right) {
  int i, j, k;
  int n1 = mid - left + 1;
  int n2 = right - mid;

  // Create temporary arrays
  unsigned char L[n1], R[n2];

  // Copy data to temporary arrays L[] and R[]
  for (i = 0; i < n1; i++)
    L[i] = test[left + i];
  for (j = 0; j < n2; j++)
    R[j] = test[mid + 1 + j];

  // Merge the temporary arrays back into test[left..right]
  i = 0;
  j = 0;
  k = left;
  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      test[k] = L[i];
      i++;
    } else {
      test[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of L[], if there are any
  while (i < n1) {
    test[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of R[], if there are any
  while (j < n2) {
    test[k] = R[j];
    j++;
    k++;
  }
}

/**
 * @brief Main merge sort function
 *
 * @param test The array to be sorted
 * @param left The index of the leftmost element
 * @param right The index of the rightmost element
 */
void sort_array(unsigned char test[], int left, int right) {
  if (left < right) {
    // Same as (left+right)/2, but avoids overflow for large left and right
    int mid = left + (right - left) / 2;

    // Sort first and second halves
    sort_array(test, left, mid);
    sort_array(test, mid + 1, right);

    // Merge the sorted halves
    merge(test, left, mid, right);
  }
}

void find_median(unsigned char test[], int size){

  float lower = 0;
  float upper = 0;
  if(size % 2 == 0){
    lower = test[(size/2)-1];
    upper = test[(size/2)];
    printf("Median: %.2f\n", (upper+lower)/2);
  } else {
    printf("Median: %.2f\n", (float)test[(size/2)]);
  }

}

void find_mean(unsigned char test[], float size){
  
  float total = 0.0;
  for (int i = 0; i < size; i++){
    total += test[i];
  }
  float mean = (float) total/size;
  printf("Mean: %.2f\n", mean);
}

void find_max(unsigned char test[], float size){
  printf("Max: %d\n", test[(int)size-1]);

}
void find_min(unsigned char test[], float size){
  printf("Min: %d\n", test[0]);

}
void print_statistics(unsigned char test[], float size){
  find_median(test, SIZE);
  find_mean(test, SIZE);
  find_max(test, SIZE);
  find_min(test, SIZE);

}

/**
 * @brief Main function to demonstrate statistical analysis
 *
 * This function initializes an array, prints its elements, performs merge sort,
 * and prints the sorted array.
 *
 * @return 0 on successful execution
 */
int main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};


  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */
  printf("Original array: ");
  print_array(test, SIZE);

  // Sorting the array using merge sort
  sort_array(test, 0, SIZE - 1);

  printf("Sorted array: ");
  print_array(test, SIZE);
  print_statistics(test, SIZE);

  return 0;
}
