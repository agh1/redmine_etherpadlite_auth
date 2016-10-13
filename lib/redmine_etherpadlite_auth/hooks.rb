module Hooks
  class Hooks < Redmine::Hook::ViewListener
    def controller_account_success_authentication_after (context={})
      session[:ep_sessions] = {}
      # TODO: set API key from setting
      ether = EtherpadLite.connect(9001, File.new('/path/to/APIKEY.txt'))
      group = ether.group('Redmine group')
      author = ether.author(context[:user].id, :name => context[:user].firstname + ' ' + context[:user].lastname)
      author.sessions.each do |sess|
        if sess.group_id == group.id
          session = sess
          break
        end
      end
      session ||= author.create_session(group, 9999999)
      cookies[:sessionID] = {value: session.id, domain: ".example.com"}
    end
  end
end
