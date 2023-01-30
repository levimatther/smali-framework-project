.class Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;
.super Ljava/lang/Object;
.source "SimulatorContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneNumber"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;->value:Ljava/lang/String;

    .line 301
    iput p2, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;->type:I

    const-string p1, "simulator phone number"

    .line 302
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;->label:Ljava/lang/String;

    return-void
.end method
