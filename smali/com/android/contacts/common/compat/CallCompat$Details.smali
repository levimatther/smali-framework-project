.class public Lcom/android/contacts/common/compat/CallCompat$Details;
.super Ljava/lang/Object;
.source "CallCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/compat/CallCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# static fields
.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x400000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x800000

.field public static final EXTRA_ANSWERING_DROPS_FOREGROUND_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final PROPERTY_ENTERPRISE_CALL:I = 0x20

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
