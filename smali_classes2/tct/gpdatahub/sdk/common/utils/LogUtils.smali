.class public Ltct/gpdatahub/sdk/common/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "[Tct-DataHub-Sdk]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 39
    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 35
    invoke-static {v0, p0, p1}, Ltct/gpdatahub/sdk/common/utils/LogBase;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 56
    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 51
    invoke-static {v0, p0, p1}, Ltct/gpdatahub/sdk/common/utils/LogBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 60
    invoke-static {v0, p0, p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 23
    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 19
    invoke-static {v0, p0, p1}, Ltct/gpdatahub/sdk/common/utils/LogBase;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isDEBUG()Z
    .locals 1

    .line 12
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/LogBase;->isDEBUG()Z

    move-result v0

    return v0
.end method

.method public static setDEBUG(Z)V
    .locals 0

    .line 15
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/LogBase;->setDEBUG(Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 31
    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 27
    invoke-static {v0, p0, p1}, Ltct/gpdatahub/sdk/common/utils/LogBase;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 47
    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Tct-DataHub-Sdk]"

    .line 43
    invoke-static {v0, p0, p1}, Ltct/gpdatahub/sdk/common/utils/LogBase;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
