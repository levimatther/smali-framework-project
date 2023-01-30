.class public Lcom/android/voicemail/impl/OmtpEvents$Type;
.super Ljava/lang/Object;
.source "OmtpEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/OmtpEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/OmtpEvents$Type$Values;
    }
.end annotation


# static fields
.field public static final CONFIGURATION:I = 0x1

.field public static final DATA_CHANNEL:I = 0x2

.field public static final NOTIFICATION_CHANNEL:I = 0x3

.field public static final OTHER:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
