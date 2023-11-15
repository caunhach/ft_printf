/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: caunhach <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/28 23:23:24 by caunhach          #+#    #+#             */
/*   Updated: 2023/03/01 12:25:35 by caunhach         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft/libft.h"
# include <stdarg.h>

int	ft_printf(const char *s, ...);
int	print_char(char arg);
int	print_str(char *arg);
int	print_ptr(unsigned long long arg);
int	print_int(int arg);
int	print_hex(unsigned int arg, char asc);
int	print_unsigned(unsigned int arg);

#endif
