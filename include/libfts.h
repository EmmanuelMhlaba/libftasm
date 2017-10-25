/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: emmmhla <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/07 11:37:27 by emmmhla           #+#    #+#             */
/*   Updated: 2017/08/09 15:32:12 by emmmhla          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

#include <stdlib.h>

void	ft_cat(int fd);
void	ft_bzero(void *s, size_t n);

void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *b, void *s, size_t len);

char	*ft_strdup(const char *s);
char	*ft_strcat(char *s1, const char *s2);

size_t	ft_strlen(const char *s);

int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);

#endif
