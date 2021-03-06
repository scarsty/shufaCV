#pragma once
#include <memory>
#include <vector>
#include <assert.h>

namespace sfcv {

class Mat
{
protected:
    int64_t data_size_ = 0;

    std::vector<int> dim_;

    //数据
    char* data_ = nullptr;
    //共享指针的意义是自动析构不被引用的数据，不可以直接使用
    std::shared_ptr<std::vector<char> > shared_data_;

    void* user_data_ = nullptr;

    void create(); // ctors reuse this

public:
    Mat(const std::vector<int>& dim);
    Mat(const std::initializer_list<int> dim);
    Mat(int m, int n)
        : Mat(std::vector<int>{m, n})
    {
    }
    Mat()
    {
    }

public:
    char* data() const
    {
        return data_;
    }
    int row() const
    {
        return col() == 0 ? 0 : data_size_ / col();
    }
    int col() const
    {
        return dim_.size() > 0 ? dim_.back() : 0;
    }
    int channel() const
    {
        return 0;
    }                  //unfinished
    Mat clone() const; //unfinished
};

//运算符重载：+-*数乘
inline const Mat operator+(const Mat& A, const Mat& B)
{
    assert((A.row() == B.row()) && (A.col() == B.col()));
    Mat R(A.row(), A.col());
    char* da = A.data();
    char* db = B.data();
    char* dr = R.data();
    for (int i = 0; i < A.row(); i++)
    {
        for (int j = 0; j < A.col(); j++)
        {
            int idx = i * A.col() + j;
            dr[idx] = da[idx] + db[idx];
        }
    }
    return R;
}

inline Mat operator-(const Mat& A, const Mat& B)
{
    Mat R;
    return R;
}

inline Mat operator*(const Mat& A, const Mat& B)
{
    Mat R;
    return R;
}

inline Mat operator*(double r, const Mat& A)
{
    Mat R;
    return R;
}

inline Mat operator*(const Mat& A, double r)
{
    Mat R;
    return R;
}

}; // namespace sfcv
