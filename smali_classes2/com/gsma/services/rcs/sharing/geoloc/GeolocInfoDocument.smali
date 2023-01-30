.class public Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;
.super Ljava/lang/Object;
.source "GeolocInfoDocument.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.rcspushlocation+xml"


# instance fields
.field private entity:Ljava/lang/String;

.field private expiration:J

.field private label:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private radius:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->entity:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->label:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->latitude:D

    .line 50
    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->longitude:D

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->expiration:J

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->radius:F

    .line 68
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->entity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntity()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->entity:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->expiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->longitude:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->radius:F

    return v0
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->entity:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->expiration:J

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->label:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->longitude:D

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->radius:F

    return-void
.end method
