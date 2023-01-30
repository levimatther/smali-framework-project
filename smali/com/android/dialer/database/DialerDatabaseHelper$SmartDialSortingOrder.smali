.class interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialSortingOrder;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SmartDialSortingOrder"
.end annotation


# static fields
.field public static final LAST_TIME_USED_CURRENT_MS:J = 0xf731400L

.field public static final LAST_TIME_USED_RECENT_MS:J = 0x9a7ec800L

.field public static final SORT_BY_DATA_USAGE:Ljava/lang/String; = "(CASE WHEN ( ?1 - smartdial_table.last_time_used) < 259200000 THEN 0  WHEN ( ?1 - smartdial_table.last_time_used) < 2592000000 THEN 1  ELSE 2 END)"

.field public static final SORT_ORDER:Ljava/lang/String; = "smartdial_table.starred DESC, smartdial_table.is_super_primary DESC, (CASE WHEN ( ?1 - smartdial_table.last_time_used) < 259200000 THEN 0  WHEN ( ?1 - smartdial_table.last_time_used) < 2592000000 THEN 1  ELSE 2 END), smartdial_table.times_used DESC, smartdial_table.in_visible_group DESC, smartdial_table.display_name, smartdial_table.contact_id, smartdial_table.is_primary DESC"

.field public static final TIME_SINCE_LAST_USED_MS:Ljava/lang/String; = "( ?1 - smartdial_table.last_time_used)"
