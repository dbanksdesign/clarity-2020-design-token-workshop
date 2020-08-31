import React from 'react';
import styled from 'styled-components';
import * as tokens from 'clarity-design-tokens';

const DefaultBadge = styled.span({
  display: 'inline-block',
  padding: `${tokens.ComponentBadgePaddingVertical} ${tokens.ComponentBadgePaddingHorizontal}`,
  backgroundColor: tokens.ColorBackgroundInfo,
  borderRadius: tokens.SizeBorderRadiusLarge,
});

const DangerBadge = styled(DefaultBadge)({
  backgroundColor: tokens.ComponentBadgeDangerBackgroundColor,
  color: tokens.ComponentBadgeDangerColor,
});

const WarningBadge = styled(DefaultBadge)({
  backgroundColor: tokens.ComponentBadgeWarningBackgroundColor,
  color: tokens.ComponentBadgeWarningColor,
});

const SuccessBadge = styled(DefaultBadge)({
  backgroundColor: tokens.ComponentBadgeSuccessBackgroundColor,
  color: tokens.ComponentBadgeSuccessColor,
});

const map = {
  danger: DangerBadge,
  default: DefaultBadge,
  warning: WarningBadge,
  success: SuccessBadge,
}

const Badge = ({ children, variant=`default` }) => {
  const Wrapper = map[variant];
  if (Wrapper) {
    return (
      <Wrapper>{children}</Wrapper>
    )
  } else {
    return null;
  }

}

export default Badge;