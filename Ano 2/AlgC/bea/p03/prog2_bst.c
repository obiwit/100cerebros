#include <stdio.h>
#include <stdlib.h>
 
int COMP_NUM = 0;

typedef struct node
{
    int data;
    struct node* left;
    struct node* right;
    int index;
    int left_branch_size;
} node;

node* bst_root;

void BST_insert(node* n, int elem, int index) {
	if (elem > n->data) {
		if (n->right == NULL) {
			n->right = (node*) malloc(sizeof(node));
			n->right->data = elem;
			n->right->index = index;
			n->right->left_branch_size = 0;
		} else {
			BST_insert(n->right, elem, index);
		}
	} else if (elem < n->data) {
		n->left_branch_size++;
		if (n->left == NULL) {
			n->left = (node*) malloc(sizeof(node));
			n->left->data = elem;
			n->left->index = index;
			n->left->left_branch_size = 0;
		} else {
			BST_insert(n->left, elem, index);
		}
	}
}

void BST_get_biggest_left_size(node* n) {
	printf("%2d : %2d\n", n->data, n->left_branch_size);
	if (n->right != NULL) {
		BST_get_biggest_left_size(n->right);
	}
	if (n->left != NULL) {
		BST_get_biggest_left_size(n->left);
	}
	return;
}


int count_smaller_prev_elements(int* a, int len) 
{
	bst_root = (node*) malloc(sizeof(node));
	bst_root->data = a[0];
	bst_root->index = 0;
	bst_root->left_branch_size = 0;


	for (int i = 1; i < len; i++)
	{
		BST_insert(bst_root, a[i], i);
	}
	BST_get_biggest_left_size(bst_root);

	return -1;
}

int main(void) 
{
	COMP_NUM = 0;
	int array1[50] = {1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
					  1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
					  1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
					  1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
					  1, 9, 2, 5, 8, 4, 3, 2, 7, 5};
	printf("%d\n", count_smaller_prev_elements(array1, 50));
	printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); // 193; P=152
	COMP_NUM = 0;
	printf("%d\n", count_smaller_prev_elements(array1, 10));
	printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  21; P=14

	COMP_NUM = 0;
	int array2[10] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
	printf("%d\n", count_smaller_prev_elements(array2, 10));
	printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  19; P=19

	COMP_NUM = 0;
	int array3[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	printf("%d\n", count_smaller_prev_elements(array3, 10));
	printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //   9; P=10

	COMP_NUM = 0;
	int array4[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
	printf("%d\n", count_smaller_prev_elements(array4, 10));
	printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  71; P=64

	COMP_NUM = 0;
	int array5[10] = {1, 4, 5, 4, 3, 7, 6, 10, 10, 1};
	printf("%d\n", count_smaller_prev_elements(array5, 10));
	printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  22; P=14
}