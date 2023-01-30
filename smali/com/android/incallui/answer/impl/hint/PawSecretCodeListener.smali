.class public Lcom/android/incallui/answer/impl/hint/PawSecretCodeListener;
.super Landroid/content/BroadcastReceiver;
.source "PawSecretCodeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/hint/PawSecretCodeListener$PawType;
    }
.end annotation


# static fields
.field static final CONFIG_PAW_SECRET_CODE:Ljava/lang/String; = "paw_secret_code"

.field public static final PAW_DRAWABLE_ID_KEY:Ljava/lang/String; = "paw_drawable_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAW_ENABLED_WITH_SECRET_CODE_KEY:Ljava/lang/String; = "paw_enabled_with_secret_code"

.field public static final PAW_TYPE:Ljava/lang/String; = "paw_type"

.field public static final PAW_TYPE_CAT:I = 0x1

.field public static final PAW_TYPE_DOG:I = 0x2

.field public static final PAW_TYPE_INVALID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static selectPawType(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 92
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 98
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "paw_enabled_with_secret_code"

    .line 99
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "paw_type"

    .line 100
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
