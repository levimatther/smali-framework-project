.class Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ringtone/InCallTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToneGeneratorInfo"
.end annotation


# instance fields
.field public final stream:I

.field public final tone:I

.field public final toneLengthMillis:I

.field public final volume:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    .line 151
    iput p2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    .line 152
    iput p3, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    .line 153
    iput p4, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->stream:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToneGeneratorInfo{toneLengthMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
