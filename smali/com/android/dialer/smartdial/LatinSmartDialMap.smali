.class public Lcom/android/dialer/smartdial/LatinSmartDialMap;
.super Ljava/lang/Object;
.source "LatinSmartDialMap.java"

# interfaces
.implements Lcom/android/dialer/smartdial/SmartDialMap;


# static fields
.field private static final LATIN_LETTERS_TO_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 21
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/smartdial/LatinSmartDialMap;->LATIN_LETTERS_TO_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialpadIndex(C)B
    .locals 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    :goto_0
    sub-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_0
    const/16 v1, 0x61

    if-lt p1, v1, :cond_1

    const/16 v2, 0x7a

    if-gt p1, v2, :cond_1

    .line 771
    sget-object v2, Lcom/android/dialer/smartdial/LatinSmartDialMap;->LATIN_LETTERS_TO_DIGITS:[C

    sub-int/2addr p1, v1

    aget-char p1, v2, p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getDialpadNumericCharacter(C)C
    .locals 2

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_0

    .line 780
    sget-object v1, Lcom/android/dialer/smartdial/LatinSmartDialMap;->LATIN_LETTERS_TO_DIGITS:[C

    sub-int/2addr p1, v0

    aget-char p1, v1, p1

    :cond_0
    return p1
.end method

.method public isValidDialpadAlphabeticChar(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidDialpadCharacter(C)Z
    .locals 1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/dialer/smartdial/LatinSmartDialMap;->isValidDialpadAlphabeticChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/dialer/smartdial/LatinSmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isValidDialpadNumericChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public normalizeCharacter(C)C
    .locals 22

    const/16 v0, 0x70

    const/16 v1, 0x66

    const/16 v2, 0x6a

    const/16 v3, 0x62

    const/16 v4, 0x77

    const/16 v5, 0x68

    const/16 v6, 0x6b

    const/16 v7, 0x7a

    const/16 v8, 0x72

    const/16 v9, 0x73

    const/16 v10, 0x79

    const/16 v11, 0x74

    const/16 v12, 0x6e

    const/16 v13, 0x6c

    const/16 v14, 0x64

    const/16 v15, 0x63

    const/16 v16, 0x67

    const/16 v17, 0x65

    const/16 v18, 0x69

    const/16 v19, 0x61

    const/16 v20, 0x75

    const/16 v21, 0x6f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p1

    :pswitch_1
    return v10

    :pswitch_2
    return v21

    :pswitch_3
    return v17

    :pswitch_4
    return v19

    :pswitch_5
    return v7

    :pswitch_6
    return v5

    :pswitch_7
    return v10

    :pswitch_8
    return v11

    :pswitch_9
    return v9

    :pswitch_a
    return v20

    :pswitch_b
    return v8

    :pswitch_c
    return v21

    :pswitch_d
    return v18

    :pswitch_e
    return v17

    :pswitch_f
    return v19

    :pswitch_10
    return v21

    :pswitch_11
    return v19

    :pswitch_12
    return v12

    :pswitch_13
    return v4

    :pswitch_14
    return v16

    :pswitch_15
    return v14

    :pswitch_16
    return v2

    :pswitch_17
    return v21

    :pswitch_18
    return v6

    :pswitch_19
    return v16

    :pswitch_1a
    return v19

    :pswitch_1b
    return v20

    :pswitch_1c
    return v21

    :pswitch_1d
    return v18

    :pswitch_1e
    return v19

    :pswitch_1f
    return v4

    :pswitch_20
    return v7

    :pswitch_21
    return v10

    :pswitch_22
    const/16 v0, 0x76

    return v0

    :pswitch_23
    return v10

    :pswitch_24
    return v20

    :pswitch_25
    return v11

    :pswitch_26
    return v0

    :pswitch_27
    return v21

    :pswitch_28
    return v12

    :pswitch_29
    return v4

    :pswitch_2a
    return v13

    :pswitch_2b
    return v6

    :pswitch_2c
    return v18

    :pswitch_2d
    return v16

    :pswitch_2e
    return v1

    :pswitch_2f
    return v17

    :pswitch_30
    return v14

    :pswitch_31
    return v15

    :pswitch_32
    return v21

    :pswitch_33
    return v3

    :pswitch_34
    return v9

    :pswitch_35
    return v7

    :pswitch_36
    return v10

    :pswitch_37
    return v4

    :pswitch_38
    return v20

    :pswitch_39
    return v11

    :pswitch_3a
    return v9

    :pswitch_3b
    return v8

    :pswitch_3c
    return v21

    :pswitch_3d
    return v12

    :pswitch_3e
    return v13

    :pswitch_3f
    return v6

    :pswitch_40
    return v2

    :pswitch_41
    return v18

    :pswitch_42
    return v5

    :pswitch_43
    return v16

    :pswitch_44
    return v17

    :pswitch_45
    return v14

    :pswitch_46
    return v15

    :pswitch_47
    return v19

    :pswitch_48
    return v10

    :pswitch_49
    return v20

    :pswitch_4a
    return v21

    :pswitch_4b
    return v12

    :pswitch_4c
    return v14

    :pswitch_4d
    return v18

    :pswitch_4e
    return v17

    :pswitch_4f
    return v15

    :pswitch_50
    return v19

    :pswitch_51
    return v20

    :pswitch_52
    return v21

    :pswitch_53
    const/16 v0, 0x78

    return v0

    :pswitch_54
    return v21

    :pswitch_55
    return v12

    :pswitch_56
    return v14

    :pswitch_57
    return v18

    :pswitch_58
    return v17

    :pswitch_59
    return v15

    :pswitch_5a
    return v19

    :pswitch_5b
    return v7

    :pswitch_5c
    return v10

    :pswitch_5d
    const/16 v0, 0x78

    return v0

    :pswitch_5e
    return v4

    :pswitch_5f
    const/16 v0, 0x76

    return v0

    :pswitch_60
    return v20

    :pswitch_61
    return v11

    :pswitch_62
    return v9

    :pswitch_63
    return v8

    :pswitch_64
    const/16 v0, 0x71

    :pswitch_65
    return v0

    :pswitch_66
    return v21

    :pswitch_67
    return v12

    :pswitch_68
    const/16 v0, 0x6d

    return v0

    :pswitch_69
    return v13

    :pswitch_6a
    return v6

    :pswitch_6b
    return v2

    :pswitch_6c
    return v18

    :pswitch_6d
    return v5

    :pswitch_6e
    return v16

    :pswitch_6f
    return v1

    :pswitch_70
    return v17

    :pswitch_71
    return v14

    :pswitch_72
    return v15

    :pswitch_73
    return v3

    :pswitch_74
    return v19

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_0
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_0
        :pswitch_0
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_0
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_48
        :pswitch_0
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_0
        :pswitch_0
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_0
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
