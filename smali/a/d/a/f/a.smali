.class public La/d/a/f/a;
.super Ljava/lang/Object;
.source "ParseMsgCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_7

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x130

    if-eq p0, v0, :cond_2

    const/16 v0, 0x190

    if-eq p0, v0, :cond_1

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "Accepted"

    return-object p0

    :pswitch_1
    const-string p0, "Created"

    return-object p0

    :pswitch_2
    const-string p0, "OK"

    return-object p0

    :pswitch_3
    const-string p0, "Not Acceptable"

    return-object p0

    :pswitch_4
    const-string p0, "Method Not Allowed"

    return-object p0

    :pswitch_5
    const-string p0, "Not Found"

    return-object p0

    :pswitch_6
    const-string p0, "Forbidden"

    return-object p0

    :pswitch_7
    const-string p0, "Unsupported Media Type"

    return-object p0

    :pswitch_8
    const-string p0, "Request-URI Too Long"

    return-object p0

    :pswitch_9
    const-string p0, "Request Entity Too Large"

    return-object p0

    :pswitch_a
    const-string p0, "Precondition Failed"

    return-object p0

    :pswitch_b
    const-string p0, "Length Required"

    return-object p0

    :pswitch_c
    const-string p0, "Gone"

    return-object p0

    :pswitch_d
    const-string p0, "Conflict"

    return-object p0

    :pswitch_e
    const-string p0, "Request Timeout"

    return-object p0

    :cond_0
    const-string p0, "Unauthorized"

    return-object p0

    :cond_1
    const-string p0, "Bad Request"

    return-object p0

    :cond_2
    const-string p0, "Not Modified"

    return-object p0

    :cond_3
    const-string p0, "See Other"

    return-object p0

    :cond_4
    const-string p0, "Service Unavailable"

    return-object p0

    :cond_5
    const-string p0, "Internal server error"

    return-object p0

    :cond_6
    const-string p0, "Multiple Choices"

    return-object p0

    :cond_7
    const-string p0, "No"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x193
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x198
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
