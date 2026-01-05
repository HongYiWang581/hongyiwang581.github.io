(function() {
  // 设置你的密码
  const PASSWORD = '11111110'; // 修改为你想要的密码
  
  // 检查是否已经输入正确密码
  if (sessionStorage.getItem('blog-password-verified') === 'true') {
    return; // 已验证，不再提示
  }
  
  // 显示密码输入框
  const password = prompt('🔒 请输入博客访问密码:', '');
  
  if (password === PASSWORD) {
    // 密码正确，保存到 sessionStorage（刷新页面后需要重新输入）
    // 如果想要长期记住，改为 localStorage
    sessionStorage.setItem('blog-password-verified', 'true');
  } else if (password !== null) {
    // 密码错误且用户没有取消
    alert('❌ 密码错误！');
    location.reload(); // 刷新页面
  } else {
    // 用户取消了提示框
    location.href = 'about:blank'; // 跳转到空白页
  }
})();
