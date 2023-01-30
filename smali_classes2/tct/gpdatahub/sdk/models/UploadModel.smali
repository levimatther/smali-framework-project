.class public Ltct/gpdatahub/sdk/models/UploadModel;
.super Ljava/lang/Object;
.source "UploadModel.java"


# instance fields
.field private _id:J

.field private data:Ljava/lang/String;

.field private day:Ljava/lang/String;

.field private last_upload_time:Ljava/lang/String;

.field private split_process:I

.field private start_id:J

.field private upload_fail_times:I

.field private upload_flag:I

.field private upload_state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->_id:J

    .line 9
    iput-wide v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->start_id:J

    const-string v0, ""

    .line 10
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->day:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_state:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_fail_times:I

    .line 13
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->last_upload_time:Ljava/lang/String;

    .line 14
    iput v1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->split_process:I

    .line 15
    iput v1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_flag:I

    .line 16
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_upload_time()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->last_upload_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSplit_process()I
    .locals 1

    .line 43
    iget v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->split_process:I

    return v0
.end method

.method public getStart_id()J
    .locals 2

    .line 23
    iget-wide v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->start_id:J

    return-wide v0
.end method

.method public getUpload_fail_times()I
    .locals 1

    .line 35
    iget v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_fail_times:I

    return v0
.end method

.method public getUpload_flag()I
    .locals 1

    .line 47
    iget v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_flag:I

    return v0
.end method

.method public getUpload_state()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_state:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()J
    .locals 2

    .line 19
    iget-wide v0, p0, Ltct/gpdatahub/sdk/models/UploadModel;->_id:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->data:Ljava/lang/String;

    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->day:Ljava/lang/String;

    return-void
.end method

.method public setLast_upload_time(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->last_upload_time:Ljava/lang/String;

    return-void
.end method

.method public setSplit_process(I)V
    .locals 0

    .line 79
    iput p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->split_process:I

    return-void
.end method

.method public setStart_id(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->start_id:J

    return-void
.end method

.method public setUpload_fail_times(I)V
    .locals 0

    .line 71
    iput p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_fail_times:I

    return-void
.end method

.method public setUpload_flag(I)V
    .locals 0

    .line 83
    iput p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_flag:I

    return-void
.end method

.method public setUpload_state(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_state:Ljava/lang/String;

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->_id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadModel{_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", start_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->start_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", day=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/models/UploadModel;->day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", upload_state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", upload_fail_times="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_fail_times:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", last_upload_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/UploadModel;->last_upload_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", split_process="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/models/UploadModel;->split_process:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", upload_flag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/models/UploadModel;->upload_flag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/UploadModel;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
