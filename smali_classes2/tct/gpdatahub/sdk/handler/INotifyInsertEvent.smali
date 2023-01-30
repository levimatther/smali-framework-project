.class public interface abstract Ltct/gpdatahub/sdk/handler/INotifyInsertEvent;
.super Ljava/lang/Object;
.source "INotifyInsertEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;
    }
.end annotation


# static fields
.field public static final INSERT_TYPE_EVENT_ACTIVITY:I = 0x3

.field public static final INSERT_TYPE_EVENT_NORMAL:I = 0x1

.field public static final INSERT_TYPE_EVENT_NORMAL_FIXED:I = 0x0

.field public static final INSERT_TYPE_EVENT_SYSTEM:I = 0x2

.field public static final INSERT_TYPE_EVENT_THROWABLE:I = 0x4


# virtual methods
.method public abstract setCallback(Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;)V
.end method
