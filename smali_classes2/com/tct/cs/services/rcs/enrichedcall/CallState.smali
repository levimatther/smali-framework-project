.class public Lcom/tct/cs/services/rcs/enrichedcall/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field public static final ACTIVE:I = 0x3

.field public static final DIALING:I = 0x6

.field public static final DISCONNECTED:I = 0xa

.field public static final INCOMING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallStateName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DISCONNECTED"

    return-object p0

    :cond_1
    const-string p0, "DIALING"

    return-object p0

    :cond_2
    const-string p0, "INCOMING"

    return-object p0

    :cond_3
    const-string p0, "ACTIVE"

    return-object p0
.end method
