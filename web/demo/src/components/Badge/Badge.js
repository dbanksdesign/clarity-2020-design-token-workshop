import React from 'react';
import styled from 'styled-components';
import * as tokens from 'clarity-design-tokens';

const DefaultBadge = styled.span({
  display: 'inline-block',
  padding: tokens.SizePaddingSmall,
  backgroundColor: tokens.ColorBackgroundInfo,
  borderRadius: tokens.SizeBorderRadiusLarge,
});

const DangerBadge = styled(DefaultBadge)({
  backgroundColor: tokens.ComponentBadgeVariantDangerBackgroundColor,
});

const map = {
  danger: DangerBadge,
  default: DefaultBadge
}

const Badge = ({ children, variant=`default` }) => {
  const Wrapper = map[variant];
  return (
    <Wrapper>{children}</Wrapper>
  )
}

export default Badge;