.class public Lcom/android/dialer/compat/SdkVersionOverride;
.super Ljava/lang/Object;
.source "SdkVersionOverride.java"


# static fields
.field private static final ALLOW_OVERRIDE_VERSION:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkVersion(I)I
    .locals 0

    .line 41
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    return p0
.end method
