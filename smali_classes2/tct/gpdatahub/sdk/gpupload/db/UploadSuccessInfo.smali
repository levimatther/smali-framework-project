.class public Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;
.super Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;
.source "UploadSuccessInfo.java"


# static fields
.field public static final ATTR_RECORD_DATE:Ljava/lang/String; = "success_date"

.field public static final ATTR_SUCCESS_TIME:Ljava/lang/String; = "success_time"

.field private static final TAG:Ljava/lang/String; = "UploadSuccessInfo"

.field public static final TAG_SUCCESS_RECORD:Ljava/lang/String; = "success_record"


# instance fields
.field private mRecordDate:Ljava/lang/String;

.field private mSuccessTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;-><init>()V

    .line 32
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mRecordDate:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mSuccessTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecordDate()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mRecordDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessTime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mSuccessTime:Ljava/lang/String;

    return-object v0
.end method

.method public read(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "success_date"

    .line 70
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mRecordDate:Ljava/lang/String;

    const-string v1, "success_time"

    .line 71
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mSuccessTime:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic readConfigs()V
    .locals 0

    .line 15
    invoke-super {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->readConfigs()V

    return-void
.end method

.method public bridge synthetic setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V

    return-void
.end method

.method public setRecordDate(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mRecordDate:Ljava/lang/String;

    return-void
.end method

.method public setSuccessTime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mSuccessTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadSuccessInfo{mRecordDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mRecordDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSuccessTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->mSuccessTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateConfigs()V
    .locals 0

    .line 15
    invoke-super {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->updateConfigs()V

    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "success_record"

    .line 62
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success_date"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->getSuccessTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success_time"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
