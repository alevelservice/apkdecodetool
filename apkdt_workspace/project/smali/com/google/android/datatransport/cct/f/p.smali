.class public final enum Lcom/google/android/datatransport/cct/f/p;
.super Ljava/lang/Enum;
.source "QosTier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/f/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/google/android/datatransport/cct/f/p;

.field public static final enum FAST_IF_RADIO_AWAKE:Lcom/google/android/datatransport/cct/f/p;

.field public static final enum NEVER:Lcom/google/android/datatransport/cct/f/p;

.field public static final enum UNMETERED_ONLY:Lcom/google/android/datatransport/cct/f/p;

.field public static final enum UNMETERED_OR_DAILY:Lcom/google/android/datatransport/cct/f/p;

.field public static final enum UNRECOGNIZED:Lcom/google/android/datatransport/cct/f/p;

.field private static final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/datatransport/cct/f/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/google/android/datatransport/cct/f/p;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/f/p;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/datatransport/cct/f/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->DEFAULT:Lcom/google/android/datatransport/cct/f/p;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/f/p;

    const/4 v2, 0x1

    const-string v3, "UNMETERED_ONLY"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/datatransport/cct/f/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_ONLY:Lcom/google/android/datatransport/cct/f/p;

    .line 3
    new-instance v0, Lcom/google/android/datatransport/cct/f/p;

    const/4 v3, 0x2

    const-string v4, "UNMETERED_OR_DAILY"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/datatransport/cct/f/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_OR_DAILY:Lcom/google/android/datatransport/cct/f/p;

    .line 4
    new-instance v0, Lcom/google/android/datatransport/cct/f/p;

    const/4 v4, 0x3

    const-string v5, "FAST_IF_RADIO_AWAKE"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/datatransport/cct/f/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->FAST_IF_RADIO_AWAKE:Lcom/google/android/datatransport/cct/f/p;

    .line 5
    new-instance v0, Lcom/google/android/datatransport/cct/f/p;

    const/4 v5, 0x4

    const-string v6, "NEVER"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/datatransport/cct/f/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->NEVER:Lcom/google/android/datatransport/cct/f/p;

    .line 6
    new-instance v0, Lcom/google/android/datatransport/cct/f/p;

    const/4 v6, -0x1

    const/4 v7, 0x5

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v0, v8, v7, v6}, Lcom/google/android/datatransport/cct/f/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->UNRECOGNIZED:Lcom/google/android/datatransport/cct/f/p;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/datatransport/cct/f/p;

    .line 7
    sget-object v8, Lcom/google/android/datatransport/cct/f/p;->DEFAULT:Lcom/google/android/datatransport/cct/f/p;

    aput-object v8, v0, v1

    sget-object v8, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_ONLY:Lcom/google/android/datatransport/cct/f/p;

    aput-object v8, v0, v2

    sget-object v8, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_OR_DAILY:Lcom/google/android/datatransport/cct/f/p;

    aput-object v8, v0, v3

    sget-object v8, Lcom/google/android/datatransport/cct/f/p;->FAST_IF_RADIO_AWAKE:Lcom/google/android/datatransport/cct/f/p;

    aput-object v8, v0, v4

    sget-object v8, Lcom/google/android/datatransport/cct/f/p;->NEVER:Lcom/google/android/datatransport/cct/f/p;

    aput-object v8, v0, v5

    sget-object v8, Lcom/google/android/datatransport/cct/f/p;->UNRECOGNIZED:Lcom/google/android/datatransport/cct/f/p;

    aput-object v8, v0, v7

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->f:[Lcom/google/android/datatransport/cct/f/p;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    .line 9
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    sget-object v7, Lcom/google/android/datatransport/cct/f/p;->DEFAULT:Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_ONLY:Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_OR_DAILY:Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/f/p;->FAST_IF_RADIO_AWAKE:Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/f/p;->NEVER:Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/f/p;->UNRECOGNIZED:Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/datatransport/cct/f/p;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/datatransport/cct/f/p;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/datatransport/cct/f/p;->NEVER:Lcom/google/android/datatransport/cct/f/p;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/datatransport/cct/f/p;->FAST_IF_RADIO_AWAKE:Lcom/google/android/datatransport/cct/f/p;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_OR_DAILY:Lcom/google/android/datatransport/cct/f/p;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/android/datatransport/cct/f/p;->UNMETERED_ONLY:Lcom/google/android/datatransport/cct/f/p;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/google/android/datatransport/cct/f/p;->DEFAULT:Lcom/google/android/datatransport/cct/f/p;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/f/p;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/datatransport/cct/f/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/cct/f/p;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/cct/f/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/f/p;->f:[Lcom/google/android/datatransport/cct/f/p;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/cct/f/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/cct/f/p;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/cct/f/p;->value:I

    return v0
.end method
