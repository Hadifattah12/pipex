/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hfattah <hfattah@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/11 16:50:18 by hfattah           #+#    #+#             */
/*   Updated: 2024/06/11 17:46:53 by hfattah          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	dest_length;
	size_t	src_length;
	size_t	i;
	size_t	j;
	int		total_length;

	dest_length = ft_strlen(dst);
	src_length = ft_strlen(src);
	i = 0;
	j = 0;
	if (size > dest_length)
		total_length = dest_length + src_length;
	else
		total_length = src_length + size;
	j = dest_length;
	while (src[i] && j + 1 < size)
	{
		dst[j] = src[i];
		j++;
		i++;
	}
	dst[j] = 0;
	return (total_length);
}
