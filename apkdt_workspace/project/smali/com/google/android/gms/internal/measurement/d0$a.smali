.class public final enum Lcom/google/android/gms/internal/measurement/d0$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/d0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/f4;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvq:Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvs:Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvt:Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvu:Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvv:Lcom/google/android/gms/internal/measurement/d0$a;

.field public static final enum zzvw:Lcom/google/android/gms/internal/measurement/d0$a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MATCH_TYPE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvq:Lcom/google/android/gms/internal/measurement/d0$a;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v2, 0x1

    const-string v3, "REGEXP"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v3, 0x2

    const-string v4, "BEGINS_WITH"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvs:Lcom/google/android/gms/internal/measurement/d0$a;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v4, 0x3

    const-string v5, "ENDS_WITH"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvt:Lcom/google/android/gms/internal/measurement/d0$a;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v5, 0x4

    const-string v6, "PARTIAL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvu:Lcom/google/android/gms/internal/measurement/d0$a;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v6, 0x5

    const-string v7, "EXACT"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvv:Lcom/google/android/gms/internal/measurement/d0$a;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v7, 0x6

    const-string v8, "IN_LIST"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/measurement/d0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvw:Lcom/google/android/gms/internal/measurement/d0$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/d0$a;

    .line 8
    sget-object v8, Lcom/google/android/gms/internal/measurement/d0$a;->zzvq:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvs:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvt:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvu:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvv:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvw:Lcom/google/android/gms/internal/measurement/d0$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->e:[Lcom/google/android/gms/internal/measurement/d0$a;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h0;-><init>()V

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
    iput p3, p0, Lcom/google/android/gms/internal/measurement/d0$a;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/d0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/d0$a;->e:[Lcom/google/android/gms/internal/measurement/d0$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/d0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/d0$a;

    return-object v0
.end method

.method public static zzh(I)Lcom/google/android/gms/internal/measurement/d0$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvw:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvv:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvu:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvt:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvs:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/measurement/d0$a;->zzvq:Lcom/google/android/gms/internal/measurement/d0$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzlh()Lcom/google/android/gms/internal/measurement/h4;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/g0;->a:Lcom/google/android/gms/internal/measurement/h4;

    return-object v0
.end method


# virtual methods
.method public final zzlg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d0$a;->value:I

    return v0
.end method
