/**
 * Hide Fluid theme console banner without touching theme source.
 * This script wraps hexo.log.info and filters messages containing
 * the Fluid banner phrases.
 */

'use strict';

const PHRASES = [
  '感谢使用 Fluid 主题',
  'hexo.fluid-dev.com/docs'
];

function shouldSuppress(chunk) {
  if (chunk == null) return false;
  const text = String(chunk);
  return PHRASES.some((p) => text.includes(p));
}

function wrapLogger(hexo) {
  if (!hexo || !hexo.log || hexo._fluidBannerPatched) return;
  hexo._fluidBannerPatched = true;

  const originalInfo = hexo.log.info.bind(hexo.log);

  hexo.log.info = (...args) => {
    // If any arg includes the phrases, drop this log
    if (args.some(shouldSuppress)) return;
    // Also check combined (handles multi-line strings)
    const combined = args
      .map((a) => (typeof a === 'string' ? a : ''))
      .join(' ');
    if (shouldSuppress(combined)) return;
    return originalInfo(...args);
  };
}

wrapLogger(hexo);

module.exports = {};
