/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: scolen <scolen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/25 19:13:26 by scolen            #+#    #+#             */
/*   Updated: 2021/04/25 19:25:21 by scolen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <fcntl.h>
# include <string.h>
# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <sys/errno.h>

size_t	ft_strlen(const char *s);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *dst, char *src);
char	*ft_strdup(char *s1);
#endif