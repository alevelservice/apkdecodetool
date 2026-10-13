.class public Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
.super Ljava/lang/Object;
.source "LocationComponentOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final T:[I


# instance fields
.field private A:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:F

.field private C:F

.field private D:Z

.field private E:F

.field private F:F

.field private G:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:F

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/Boolean;

.field private N:Ljava/lang/Boolean;

.field private O:Ljava/lang/Integer;

.field private P:F

.field private Q:F

.field private R:F

.field private S:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:I

.field private p:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:F

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->T:[I

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;FZJ[IFFZFFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;FZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;FFFLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p24    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p42    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p24

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 2
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    move v2, p2

    .line 3
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    move v2, p3

    .line 4
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    move v2, p5

    .line 6
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    move-object v2, p6

    .line 7
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    move v2, p7

    .line 8
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    move v2, p9

    .line 10
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    move-object v2, p10

    .line 11
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    move v2, p11

    .line 12
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    move-object/from16 v2, p12

    .line 13
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    move/from16 v2, p13

    .line 14
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    move-object/from16 v2, p14

    .line 15
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    move-object/from16 v2, p16

    .line 17
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    move-object/from16 v2, p17

    .line 18
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    move-object/from16 v2, p18

    .line 19
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    move-object/from16 v2, p19

    .line 20
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    move/from16 v2, p20

    .line 21
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    move/from16 v2, p21

    .line 22
    iput-boolean v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    move-wide/from16 v2, p22

    .line 23
    iput-wide v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    if-eqz v1, :cond_0

    .line 24
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    move/from16 v1, p25

    .line 25
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    move/from16 v1, p26

    .line 26
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    move/from16 v1, p27

    .line 27
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    move/from16 v1, p28

    .line 28
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    move/from16 v1, p29

    .line 29
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    move-object/from16 v1, p30

    .line 30
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    move-object/from16 v1, p31

    .line 31
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 32
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    move/from16 v1, p33

    .line 33
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    move/from16 v1, p34

    .line 34
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    move/from16 v1, p35

    .line 35
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    move-object/from16 v1, p36

    .line 36
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    move-object/from16 v1, p37

    .line 37
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    move-object/from16 v1, p38

    .line 38
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    move/from16 v1, p39

    .line 39
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    move/from16 v1, p40

    .line 40
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    move/from16 v1, p41

    .line 41
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    move-object/from16 v1, p42

    .line 42
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->S:Landroid/view/animation/Interpolator;

    return-void

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null padding"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    .line 59
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    .line 60
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    .line 61
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    .line 62
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    .line 63
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    .line 73
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    .line 79
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    .line 80
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    .line 81
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    sget v0, Lcom/mapbox/mapboxsdk/n;->mapbox_LocationComponent:I

    invoke-static {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    const-wide/16 v2, 0x7530

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(J)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    const v3, 0x3f19999a    # 0.6f

    .line 7
    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    sget-object v4, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->T:[I

    .line 8
    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a([I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 9
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_foregroundDrawable:I

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 10
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_foregroundTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_foregroundTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 12
    :cond_0
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_backgroundDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 13
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_backgroundTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_backgroundTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 15
    :cond_1
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_foregroundDrawableStale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->f(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 16
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_foregroundStaleTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_foregroundStaleTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 18
    :cond_2
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_backgroundDrawableStale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 19
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_backgroundStaleTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_backgroundStaleTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 21
    :cond_3
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_bearingDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 22
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_bearingTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_bearingTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 24
    :cond_4
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_enableStaleState:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_enableStaleState:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 26
    :cond_5
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_staleStateTimeout:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 27
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_staleStateTimeout:I

    const/16 v6, 0x7530

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(J)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 28
    :cond_6
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_gpsDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->g(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 29
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_elevation:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 30
    sget v6, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_accuracyColor:I

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 31
    sget v6, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_accuracyAlpha:I

    const v7, 0x3e19999a    # 0.15f

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 32
    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 33
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_trackingGesturesManagement:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 34
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_trackingInitialMoveThreshold:I

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/mapbox/mapboxsdk/i;->mapbox_locationComponentTrackingInitialMoveThreshold:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 36
    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->f(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 37
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_trackingMultiFingerMoveThreshold:I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v7, Lcom/mapbox/mapboxsdk/i;->mapbox_locationComponentTrackingMultiFingerMoveThreshold:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 39
    invoke-virtual {p1, v4, p0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->g(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 40
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_iconPaddingLeft:I

    .line 41
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aput v4, p0, v6

    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_iconPaddingTop:I

    .line 42
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aput v4, p0, v1

    const/4 v4, 0x2

    sget v7, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_iconPaddingRight:I

    .line 43
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, p0, v4

    const/4 v4, 0x3

    sget v7, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_iconPaddingBottom:I

    .line 44
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, p0, v4

    .line 45
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a([I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 46
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_layer_above:I

    .line 47
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 49
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_layer_below:I

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 52
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_minZoomIconScale:I

    invoke-virtual {p1, p0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 53
    sget v3, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_maxZoomIconScale:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 54
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 55
    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 56
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_trackingAnimationDurationMultiplier:I

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 57
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 58
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_compassAnimationEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 59
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_accuracyAnimationEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 60
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleEnabled:I

    invoke-virtual {p1, p0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 61
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleFadeEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 62
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleColor:I

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 63
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleColor:I

    invoke-virtual {p1, p0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->h(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 64
    :cond_7
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleDuration:I

    const v1, 0x450fc000    # 2300.0f

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;F)F

    .line 65
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleRadius:I

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;F)F

    .line 66
    sget p0, Lcom/mapbox/mapboxsdk/o;->mapbox_LocationComponent_mapbox_pulsingLocationCircleAlpha:I

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;F)F

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    return p0
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    return p0
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    return p0
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->S:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic f(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic g(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    return v0
.end method

.method public B()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    return-object v0
.end method

.method public C()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    return v0
.end method

.method public D()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    return-object v0
.end method

.method public E()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    return-object v0
.end method

.method public F()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    return-object v0
.end method

.method public G()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->S:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public H()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    return v0
.end method

.method public I()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    return v0
.end method

.method public J()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    return-wide v0
.end method

.method public K()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;)V

    return-object v0
.end method

.method public L()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    return v0
.end method

.method public N()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    return v0
.end method

.method public O()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    return v0
.end method

.method public P()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    return-object v0
.end method

.method public a()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    return v0
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    return v0
.end method

.method public c()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 1
    const-class v2, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_f

    .line 2
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 3
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    if-eq v2, v3, :cond_8

    return v1

    .line 10
    :cond_8
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    if-eq v2, v3, :cond_9

    return v1

    .line 11
    :cond_9
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 12
    :cond_a
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 13
    :cond_b
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    iget-wide v4, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c

    return v1

    .line 14
    :cond_c
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v1

    .line 15
    :cond_d
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_e

    return v1

    .line 16
    :cond_e
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 17
    :cond_f
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_10

    return v1

    .line 18
    :cond_10
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 19
    :cond_11
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_12

    return v1

    .line 20
    :cond_12
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    .line 21
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_13
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    if-eqz v2, :cond_14

    :goto_0
    return v1

    .line 22
    :cond_14
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    if-eq v2, v3, :cond_15

    return v1

    .line 23
    :cond_15
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    if-eq v2, v3, :cond_16

    return v1

    .line 24
    :cond_16
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1

    :cond_17
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    if-eqz v2, :cond_18

    :goto_1
    return v1

    .line 25
    :cond_18
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_2

    :cond_19
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    if-eqz v2, :cond_1a

    :goto_2
    return v1

    .line 26
    :cond_1a
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_3

    :cond_1b
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    if-eqz v2, :cond_1c

    :goto_3
    return v1

    .line 27
    :cond_1c
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    if-eqz v2, :cond_1e

    :goto_4
    return v1

    .line 28
    :cond_1e
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_5

    :cond_1f
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    if-eqz v2, :cond_20

    :goto_5
    return v1

    .line 29
    :cond_20
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_6

    :cond_21
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    if-eqz v2, :cond_22

    :goto_6
    return v1

    .line 30
    :cond_22
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_7

    :cond_23
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    if-eqz v2, :cond_24

    :goto_7
    return v1

    .line 31
    :cond_24
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_8

    :cond_25
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    :goto_8
    return v1

    .line 32
    :cond_26
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    if-eqz v2, :cond_27

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_9

    :cond_27
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    if-eqz v2, :cond_28

    :goto_9
    return v1

    .line 33
    :cond_28
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_29

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_29
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_2a

    :goto_a
    return v1

    .line 34
    :cond_2a
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_b

    :cond_2b
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    if-eqz v2, :cond_2c

    :goto_b
    return v1

    .line 35
    :cond_2c
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 36
    :cond_2d
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_c

    :cond_2e
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    if-eqz v2, :cond_2f

    :goto_c
    return v1

    .line 37
    :cond_2f
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_30

    return v1

    .line 38
    :cond_30
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_31

    return v1

    .line 39
    :cond_31
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    if-eqz v2, :cond_32

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_d

    .line 40
    :cond_32
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_33

    :goto_d
    return v1

    .line 41
    :cond_33
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_34

    return v1

    .line 42
    :cond_34
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_35

    return v1

    .line 43
    :cond_35
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_36

    return v1

    .line 44
    :cond_36
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    if-eqz v2, :cond_37

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_37
    if-nez p1, :cond_38

    goto :goto_e

    :cond_38
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_39
    :goto_f
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_c

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-boolean v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-wide v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_d

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_e

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-boolean v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_f

    .line 28
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    :goto_f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_10

    .line 30
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    if-eqz v3, :cond_11

    .line 32
    invoke-virtual {v3}, Landroid/graphics/RectF;->hashCode()I

    move-result v3

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    :goto_11
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    :goto_12
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_13

    :cond_13
    const/4 v3, 0x0

    :goto_13
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_14

    .line 36
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    :goto_14
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-boolean v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-boolean v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    :goto_15
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_16

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    :goto_16
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_17

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_17

    :cond_17
    const/4 v3, 0x0

    :goto_17
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_18

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_18
    add-int/2addr v0, v2

    return v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    return v0
.end method

.method public n()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    return v0
.end method

.method public p()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    return v0
.end method

.method public q()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationComponentOptions{accuracyAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accuracyColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundDrawableStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundStaleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundDrawableStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundStaleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bearingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundStaleTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundStaleTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", enableStaleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", staleStateTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxZoomIconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZoomIconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingGesturesManagement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInitialMoveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingMultiFingerMoveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingMultiFingerProtectedMoveArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layerAbove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "layerBelow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trackingAnimationDurationMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "pulseEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "pulseFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "pulseColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "pulseSingleDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "pulseMaxRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "pulseAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    return-object v0
.end method

.method public v()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 24
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 25
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 26
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 28
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 33
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->K:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 36
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 37
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 38
    iget p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    iget p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->Q:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 40
    iget p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->R:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I:Ljava/lang/String;

    return-object v0
.end method

.method public z()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B:F

    return v0
.end method
