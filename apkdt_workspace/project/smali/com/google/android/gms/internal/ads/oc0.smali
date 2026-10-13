.class public final Lcom/google/android/gms/internal/ads/oc0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field private static final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/us1$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Lcom/google/android/gms/internal/ads/kc0;

.field private final e:Lcom/google/android/gms/internal/ads/ec0;

.field private f:Lcom/google/android/gms/internal/ads/bt1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxh:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxg:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxg:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxg:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxi:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxj:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxj:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxj:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxj:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxj:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxk:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxg:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/us1$b;->zzbxg:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/kc0;Lcom/google/android/gms/internal/ads/ec0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/google/android/gms/internal/ads/kc0;",
            "Lcom/google/android/gms/internal/ads/ec0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oc0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oc0;->b:Lcom/google/android/gms/internal/ads/qz0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oc0;->d:Lcom/google/android/gms/internal/ads/kc0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oc0;->e:Lcom/google/android/gms/internal/ads/ec0;

    const-string p2, "phone"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oc0;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/oc0;)Lcom/google/android/gms/internal/ads/ec0;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oc0;->e:Lcom/google/android/gms/internal/ads/ec0;

    return-object p0
.end method

.method private final a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/ts1;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/ts1;->k()Lcom/google/android/gms/internal/ads/ts1$a;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/bt1;->zzbvk:Lcom/google/android/gms/internal/ads/bt1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oc0;->f:Lcom/google/android/gms/internal/ads/bt1;

    goto :goto_2

    .line 5
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/bt1;->zzbvj:Lcom/google/android/gms/internal/ads/bt1;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/oc0;->f:Lcom/google/android/gms/internal/ads/bt1;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/ts1$c;->zzbwe:Lcom/google/android/gms/internal/ads/ts1$c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ts1$a;->a(Lcom/google/android/gms/internal/ads/ts1$c;)Lcom/google/android/gms/internal/ads/ts1$a;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/ts1$c;->zzbwg:Lcom/google/android/gms/internal/ads/ts1$c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ts1$a;->a(Lcom/google/android/gms/internal/ads/ts1$c;)Lcom/google/android/gms/internal/ads/ts1$a;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/ts1$c;->zzbwf:Lcom/google/android/gms/internal/ads/ts1$c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ts1$a;->a(Lcom/google/android/gms/internal/ads/ts1$c;)Lcom/google/android/gms/internal/ads/ts1$a;

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/ts1$b;->zzbvz:Lcom/google/android/gms/internal/ads/ts1$b;

    goto :goto_1

    .line 10
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/ts1$b;->zzbwc:Lcom/google/android/gms/internal/ads/ts1$b;

    goto :goto_1

    .line 11
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/ts1$b;->zzbwb:Lcom/google/android/gms/internal/ads/ts1$b;

    goto :goto_1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/ts1$b;->zzbwa:Lcom/google/android/gms/internal/ads/ts1$b;

    .line 13
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ts1$a;->a(Lcom/google/android/gms/internal/ads/ts1$b;)Lcom/google/android/gms/internal/ads/ts1$a;

    .line 14
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ts1;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/oc0;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oc0;->c(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/oc0;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/ts1;Lcom/google/android/gms/internal/ads/us1$b;)[B
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/oc0;->a(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/ts1;Lcom/google/android/gms/internal/ads/us1$b;)[B

    move-result-object p0

    return-object p0
.end method

.method private final a(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/ts1;Lcom/google/android/gms/internal/ads/us1$b;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/ss1$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ts1;",
            "Lcom/google/android/gms/internal/ads/us1$b;",
            ")[B"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/us1$a;->n()Lcom/google/android/gms/internal/ads/us1$a$a;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oc0;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/db;->b(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/oc0;->b(Z)Lcom/google/android/gms/internal/ads/bt1;

    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;->c(Lcom/google/android/gms/internal/ads/bt1;)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oc0;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oc0;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/db;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/bt1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;->d(Lcom/google/android/gms/internal/ads/bt1;)Lcom/google/android/gms/internal/ads/us1$a$a;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oc0;->d:Lcom/google/android/gms/internal/ads/kc0;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/kc0;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/us1$a$a;->b(J)Lcom/google/android/gms/internal/ads/us1$a$a;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oc0;->d:Lcom/google/android/gms/internal/ads/kc0;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/kc0;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/us1$a$a;->c(J)Lcom/google/android/gms/internal/ads/us1$a$a;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oc0;->d:Lcom/google/android/gms/internal/ads/kc0;

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/kc0;->a()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;->a(I)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 25
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/us1$a$a;->a(Lcom/google/android/gms/internal/ads/us1$b;)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 26
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/us1$a$a;->a(Lcom/google/android/gms/internal/ads/ts1;)Lcom/google/android/gms/internal/ads/us1$a$a;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oc0;->f:Lcom/google/android/gms/internal/ads/bt1;

    .line 27
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;->e(Lcom/google/android/gms/internal/ads/bt1;)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oc0;->b(Z)Lcom/google/android/gms/internal/ads/bt1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/us1$a$a;->a(Lcom/google/android/gms/internal/ads/bt1;)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;->a(J)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oc0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/db;->a(Landroid/content/ContentResolver;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/oc0;->b(Z)Lcom/google/android/gms/internal/ads/bt1;

    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/us1$a$a;->b(Lcom/google/android/gms/internal/ads/bt1;)Lcom/google/android/gms/internal/ads/us1$a$a;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/us1$a;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m71;->e()[B

    move-result-object p1

    return-object p1
.end method

.method private static b(Z)Lcom/google/android/gms/internal/ads/bt1;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/bt1;->zzbvk:Lcom/google/android/gms/internal/ads/bt1;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/bt1;->zzbvj:Lcom/google/android/gms/internal/ads/bt1;

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/us1$b;
    .locals 2

    const-string v0, "device"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dt0;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "network"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dt0;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "active_network_state"

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/oc0;->g:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/ads/us1$b;->zzbxf:Lcom/google/android/gms/internal/ads/us1$b;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/us1$b;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/oc0;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/us1$b;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oc0;->b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/us1$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/oc0;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/ts1;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oc0;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/ts1;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/ss1$a;",
            ">;"
        }
    .end annotation

    const-string v0, "ad_types"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 6
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 12
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "interstitial"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :sswitch_1
    const-string v3, "rewarded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_4

    :sswitch_2
    const-string v3, "native"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_4

    :sswitch_3
    const-string v3, "banner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_4
    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/ss1$a;->zzbuj:Lcom/google/android/gms/internal/ads/ss1$a;

    goto :goto_5

    .line 16
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/ss1$a;->zzbus:Lcom/google/android/gms/internal/ads/ss1$a;

    goto :goto_5

    .line 17
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/ads/ss1$a;->zzbuo:Lcom/google/android/gms/internal/ads/ss1$a;

    goto :goto_5

    .line 18
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/ads/ss1$a;->zzbul:Lcom/google/android/gms/internal/ads/ss1$a;

    goto :goto_5

    .line 19
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/ads/ss1$a;->zzbuk:Lcom/google/android/gms/internal/ads/ss1$a;

    .line 20
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oc0;->b:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/sc0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/sc0;-><init>(Lcom/google/android/gms/internal/ads/oc0;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-void
.end method
