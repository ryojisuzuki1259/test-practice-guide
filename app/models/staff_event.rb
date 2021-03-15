class StaffEvent < ApplicationRecord
  self.inheritance_column = nil # 「type」は予約後なのでinheritance_columnとして登録されている。それをこの行で解除している。

  belongs_to :member, class_name: "StaffMember", foreign_key: "staff_member_id"
  alias_attribute :occurred_at, :created_at # created_atカラムを"occurred_at"という名前でも参照したい、そうすることで認証のコードがわかりやすくなる

  DESCRIPRIONS = {
    logged_in: "ログイン",
    logged_out: "ログアウト",
    rejected: "ログイン拒否"
  }

  def descriprion
    DESCRIPRIONS[type.to_sym]
  end
end
