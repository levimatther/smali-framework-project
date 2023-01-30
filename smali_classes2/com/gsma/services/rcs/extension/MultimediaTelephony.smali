.class public Lcom/gsma/services/rcs/extension/MultimediaTelephony;
.super Ljava/lang/Object;
.source "MultimediaTelephony.java"


# instance fields
.field private mMultimediaTelephony:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaTelephony;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaTelephony;->mMultimediaTelephony:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    return-void
.end method


# virtual methods
.method public setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    move-object v1, p0

    .line 29
    :try_start_0
    iget-object v2, v1, Lcom/gsma/services/rcs/extension/MultimediaTelephony;->mMultimediaTelephony:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony;->setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 32
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 33
    new-instance v2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v2, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
