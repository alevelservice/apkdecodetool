.class public final Lcom/google/android/gms/internal/measurement/m8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/n8;


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/internal/measurement/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/internal/measurement/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/w1;

    const-string v1, "com.google.android.gms.measurement"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/q1;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    const-string v2, "measurement.log_installs_enabled"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/m8;->a:Lcom/google/android/gms/internal/measurement/p1;

    const-string v2, "measurement.log_third_party_store_events_enabled"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/m8;->b:Lcom/google/android/gms/internal/measurement/p1;

    const-string v2, "measurement.log_upgrades_enabled"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/m8;->c:Lcom/google/android/gms/internal/measurement/p1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzxj()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/m8;->a:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzxk()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/m8;->b:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzxl()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/m8;->c:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
