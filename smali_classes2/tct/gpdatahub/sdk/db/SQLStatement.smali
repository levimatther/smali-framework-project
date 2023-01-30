.class public final Ltct/gpdatahub/sdk/db/SQLStatement;
.super Ljava/lang/Object;
.source "SQLStatement.java"


# static fields
.field public static final AddUpload:Ljava/lang/String; = "insert into upload(day,start_id,upload_state,upload_fail_times,last_upload_time,split_process,upload_flag)values(?,?,?,?,?,?,?)"

.field public static final CREATE_TABLE_ACTIVITY_SESSION:Ljava/lang/String; = "create table if not exists activity_session(activityName text primary key,happenTime text,packageName text,appVersion text,duration integer)"

.field public static final CREATE_TABLE_COMMON:Ljava/lang/String; = "create table if not exists common(_id integer primary key autoincrement,teyeId textdataHubSdkType text)"

.field public static final CREATE_TABLE_MOBILE_EVENT:Ljava/lang/String; = "create table if not exists mobile_event(_id integer primary key autoincrement,happenTime text,packageName text,teyeId text,eventType text,eventSubType text,eventId text,paraMap text,paraType integer,appVersion text,systemInfo text,activityName text,actionName text,duration text,errorType text,errorMessage text)"

.field public static final CREATE_TABLE_MOBILE_EVENT_RECORD_BY_DATE:Ljava/lang/String; = "create table if not exists mobile_event_record_by_date(_id integer primary key autoincrement,happenTime text,packageName text,teyeId text,eventType text,eventSubType text,eventId text,paraMap text,paraType integerappVersion text,systemInfo text,activityName text,actionName text,duration text,errorType text,errorMessage text)"

.field public static final CREATE_TABLE_UPLOAD_RECORD:Ljava/lang/String; = "create table if not exists upload(_id integer primary key autoincrement,start_id bigint,day text,upload_state text,upload_fail_times integer,last_upload_time text,split_process integer,upload_flag integer)"

.field public static final DBName:Ljava/lang/String; = "tctdatahub.db"

.field public static final GET_NEWEST_MOBILE_EVENT_ID:Ljava/lang/String; = "select _id from mobile_event order by _id desc limit 1"

.field public static final GetAllUpload:Ljava/lang/String; = "select * from upload"

.field public static final GetLatestUpload:Ljava/lang/String; = "select * from upload order by _id desc limit 1"

.field public static final GetOneUpload:Ljava/lang/String; = "select * from upload where _id = ?"

.field public static final TABLE_NAME_ACTIVITY_SESSION:Ljava/lang/String; = "activity_session"

.field public static final TABLE_NAME_COMMON:Ljava/lang/String; = "common"

.field public static final TABLE_NAME_MOBILE_EVENT:Ljava/lang/String; = "mobile_event"

.field public static final TABLE_NAME_MOBILE_EVENT_RECORD_BY_DATE:Ljava/lang/String; = "mobile_event_record_by_date"

.field public static final TABLE_NAME_UPLOAD:Ljava/lang/String; = "upload"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
