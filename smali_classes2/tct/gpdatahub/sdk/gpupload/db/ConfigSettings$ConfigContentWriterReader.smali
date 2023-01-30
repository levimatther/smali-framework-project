.class abstract Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;
.super Ljava/lang/Object;
.source "ConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConfigContentWriterReader"
.end annotation


# instance fields
.field protected mConfigSettings:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->mConfigSettings:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    return-void
.end method


# virtual methods
.method protected abstract read(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readConfigs()V
    .locals 1

    .line 84
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->mConfigSettings:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->access$000(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)Z

    :cond_0
    return-void
.end method

.method public setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V
    .locals 0

    .line 75
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->mConfigSettings:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    return-void
.end method

.method public updateConfigs()V
    .locals 1

    .line 78
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->mConfigSettings:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->updateConfigs()Z

    :cond_0
    return-void
.end method

.method protected abstract write(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
