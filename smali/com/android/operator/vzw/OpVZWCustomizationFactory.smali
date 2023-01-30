.class public Lcom/android/operator/vzw/OpVZWCustomizationFactory;
.super Lcom/android/dialer/VzwOpImpl;
.source "OpVZWCustomizationFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpVZWCustomizationFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/dialer/VzwOpImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public activeWfc(Landroid/content/Context;)Z
    .locals 4

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tct.wfcsettings"

    const-string v3, "com.tct.wfcsettings.WifiCallingSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
