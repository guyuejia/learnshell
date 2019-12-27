#!/usr/bin/env bash
#获取当前日期,默认格式
#Wed Dec 25 16:11:35 2019
now=`date`

#按照一定格式获取当前时间
#20191225161500
now=`date +%Y%m%d%H%M%S`
#2019-12-25 16:15:43
now=`date "+%Y-%m-%d %H:%M:%S"`

#获取当前日期之前一段时间的日期，利用-d参数
#如果是获取之后一段时间，那把 -1 hour 换成 +1 hour
#获取当前时间之前1小时的时间（当前时间为16：20）
#2019-12-25 15:20
now=`date -d "-1 hour" "+%Y-%m-%d %H:%M"`
#获取当前时间之前5分钟的时间（当前时间为16：20）
#2019-12-25 16:15
now=`date -d "-5 minute" "+%Y-%m-%d %H:%M"`
#获取当前时间之前2天的时间（当前时间为2019-12-25）
#2019-12-24
now=`date -d "-1 day" "+%Y-%m-%d"`

#获取指定日期之前一段时间的日期，同样利用-d参数，用法类似上面的用法
#2018-01-12 00:50
now=`date -d "20180112 00:40 10 minute" +"%Y-%m-%d %H:%M"`
#如果是前一段时间，不能直接写-10 minute，会出现bug，应该采用 10 minute ago的方式
now=`date -d "20180112 00:40 10 minute ago " +"%Y-%m-%d %H:%M"`
#前1天的时间
now=`date -d "20180112 00:40 1 day ago" +"%Y-%m-%d %H:%M"`

echo $now