.class public interface abstract annotation Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorCode;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InteractionErrorCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CONTACT_HAS_NO_NUMBER:I = 0x2

.field public static final CONTACT_NOT_FOUND:I = 0x1

.field public static final OTHER_ERROR:I = 0x3

.field public static final USER_LEAVING_ACTIVITY:I = 0x4
