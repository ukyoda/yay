# 次の仕様を満たすクラスIdiomsを作成してください
#
# 1.
#   引数を一つ取るクラスメソッド `double` を作成してください
#   戻り値は、引数に渡した文字列を二つ連結したものを返してください e.g. "text" => "texttext"
#   ただし、文字列 "test" を引数に渡したときに限って、次の例外を発生させてください
#   例外は、StandardErrorを継承したDoubleErrorを発生させてください。例外クラスは、 `Idioms::` の下の名前空間で定義してください
class Idioms
    def self.double(arg1)
        unless arg1.is_a? String
            arg1 = arg1.to_s
        end
        if arg1 == 'test'
            raise DoubleError, '文字列にtestが含まれています'
        end
        return arg1 * 2
    end

    class DoubleError < StandardError
    end

end