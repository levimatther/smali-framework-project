.class public interface abstract annotation Lcom/android/dialer/notification/NotificationChannelId;
.super Ljava/lang/Object;
.source "NotificationChannelId.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "phone_default"

.field public static final INCOMING_CALL:Ljava/lang/String; = "phone_incoming_call"

.field public static final MISSED_CALL:Ljava/lang/String; = "phone_missed_call"

.field public static final ONGOING_CALL:Ljava/lang/String; = "phone_ongoing_call"
