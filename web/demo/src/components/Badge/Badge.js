import React from 'react';

// This component uses styled components for it's styling
import styled from 'styled-components';

const tokens = {
  paddingVertical: `0.5rem`,
  paddingHorizontal: `1rem`,
  backgroundColor: `#c8cccc`,
  color: `#040404`,
  borderRadius: `2rem`,
  dangerBackgroundColor: `#c8cccc`,
  dangerColor: `#040404`,
  warningBackgroundColor: `#c8cccc`,
  warningColor: `#040404`,
  successBackgroundColor: `#c8cccc`,
  successColor: `#040404`,
}

const DefaultBadge = styled.span({
  display: 'inline-block',
  padding: `${tokens.paddingVertical} ${tokens.paddingHorizontal}`,
  backgroundColor: tokens.backgroundColor,
  borderRadius: tokens.borderRadius,
});

const DangerBadge = styled(DefaultBadge)({
  backgroundColor: tokens.dangerBackgroundColor,
  color: tokens.dangerColor,
});

const WarningBadge = styled(DefaultBadge)({
  backgroundColor: tokens.warningBackgroundColor,
  color: tokens.warningColor,
});

const SuccessBadge = styled(DefaultBadge)({
  backgroundColor: tokens.successBackgroundColor,
  color: tokens.successColor,
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