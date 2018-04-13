class Task < ApplicationRecord
  def disp_term_at
    # 期限日+残り日数を設定
    term_string = '期限日まであと' + ((Date.parse(term_at.to_s) - Date.today).to_i).to_s + '日'
    Date.today > Date.parse(term_at.to_s) ? '期限切れ' : term_at.to_s + term_string
  end
end
