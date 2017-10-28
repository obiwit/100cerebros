                                # char *strcpy(char *dst, char *src)
                                # {
                                #   int i=0; do
                                #   {
                                #     dst[i] = src[i];
                                #   } while(src[i++] != '\0');
                                #   return dst;
                                # }





                                # #define STR_MAX_SIZE 30
                                # char *strcpy(char *dst, char *src);
                                # int main(void)
                                # {
                                #   static char str1[]="I serodatupmoC ed arutetiuqrA"; 
                                #   static char str2[STR_MAX_SIZE + 1];
                                #   int exit_value;
                                #
                                #   if(strlen(str1) <= STR_MAX_SIZE) {
                                #     strcpy(str2, str1);
                                #     print_string(str2);
                                #     print_string("\n");
                                #     print_string(strrev(str2));
                                #     exit_value = 0;
                                #   } else {
                                #     print_string("String too long: ");
                                #     print_int10(strlen(str1));
                                #     exit_value = -1;
                                #   }
                                #
                                #   return exit_value;
                                # }