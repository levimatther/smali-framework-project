.class public Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;
.super Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;
.source "UploadBaseInfo.java"


# static fields
.field public static final ATTR_IS_UPLOADED:Ljava/lang/String; = "is_uploaded"

.field public static final ATTR_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field public static final ATTR_PKG_VERSION_CODE:Ljava/lang/String; = "pkg_version_code"

.field private static final TAG:Ljava/lang/String; = "UploadSuccessInfo"

.field public static final TAG_BASEINFO_RECORD:Ljava/lang/String; = "base_info_record"


# instance fields
.field private mIsUploaded:Z

.field private mPkgName:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    .line 42
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    .line 43
    iput p2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    .line 44
    iput-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 80
    :cond_1
    check-cast p1, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    .line 81
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    .line 82
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getVersionCode()I

    move-result p1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 65
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUploaded()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    return v0
.end method

.method public read(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "pkg_name"

    .line 103
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    const-string v0, "pkg_version_code"

    .line 104
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    const-string v0, "is_uploaded"

    .line 105
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    return-void
.end method

.method public bridge synthetic readConfigs()V
    .locals 0

    .line 19
    invoke-super {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->readConfigs()V

    return-void
.end method

.method public bridge synthetic setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setUploaded(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 69
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadBaseInfo{mPkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateConfigs()V
    .locals 0

    .line 19
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

    const-string v1, "base_info_record"

    .line 94
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mPkgName:Ljava/lang/String;

    const-string v3, "pkg_name"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 96
    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mVersionCode:I

    const-string v3, "pkg_version_code"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 97
    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->mIsUploaded:Z

    const-string v3, "is_uploaded"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 98
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
