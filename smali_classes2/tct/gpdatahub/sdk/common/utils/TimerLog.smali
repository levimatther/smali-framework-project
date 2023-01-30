.class public Ltct/gpdatahub/sdk/common/utils/TimerLog;
.super Ltct/gpdatahub/sdk/common/utils/LogBase;
.source "TimerLog.java"


# static fields
.field private static ENABLE_DEBUG:Z = false

.field private static final FAKE:Ljava/lang/String; = "rom"

.field private static final SPLIT:Ljava/lang/String; = " "

.field protected static final TAG:Ljava/lang/String; = "TCT-Upload"

.field private static final TEYE:Ljava/lang/String; = "teye"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-boolean v0, Ltct/gpdatahub/sdk/common/constant/Debug;->DEBUG_VERSION:Z

    const/4 v0, 0x1

    sput-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ltct/gpdatahub/sdk/common/utils/LogBase;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 67
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TCT-Upload"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCT-Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 91
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TCT-Upload"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 85
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCT-Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 97
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCT-Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TCT-Upload"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCT-Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isDEBUG()Z
    .locals 1

    .line 28
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    return v0
.end method

.method protected static replaceMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "teye"

    const-string v1, "rom"

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setDEBUG(Z)V
    .locals 0

    .line 31
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/LogBase;->setDEBUG(Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TCT-Upload"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCT-Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 79
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TCT-Upload"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 73
    sget-boolean v0, Ltct/gpdatahub/sdk/common/utils/TimerLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCT-Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->replaceMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
