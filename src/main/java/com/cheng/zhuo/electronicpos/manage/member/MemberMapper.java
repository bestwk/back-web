package com.cheng.zhuo.electronicpos.manage.member;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MemberMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Member record);

    Boolean insertSelective(Member record);

    Member selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);

    List<Member> getMemberList(Map paramMap);

    List<Member> getDeleteMemberList(Map paramMap);

    Boolean deleteByMap(Map map);

    List<Map> selectYglistByStoreId(String storeId);

    Boolean qiyong(String id);
}