.class public interface abstract annotation Lcom/android/incallui/videotech/utils/SessionModificationState;
.super Ljava/lang/Object;
.source "SessionModificationState.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NO_REQUEST:I = 0x0

.field public static final RECEIVED_UPGRADE_TO_VIDEO_REQUEST:I = 0x3

.field public static final REQUEST_FAILED:I = 0x2

.field public static final REQUEST_REJECTED:I = 0x6

.field public static final UPGRADE_TO_VIDEO_REQUEST_FAILED:I = 0x5

.field public static final UPGRADE_TO_VIDEO_REQUEST_TIMED_OUT:I = 0x4

.field public static final WAITING_FOR_RESPONSE:I = 0x7

.field public static final WAITING_FOR_UPGRADE_TO_VIDEO_RESPONSE:I = 0x1
