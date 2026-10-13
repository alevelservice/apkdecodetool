.class public final Lcom/google/android/gms/internal/measurement/za;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/wa;


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

.field private static final d:Lcom/google/android/gms/internal/measurement/p1;
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

    const-string v2, "measurement.service.audience.scoped_filters_v27"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/za;->a:Lcom/google/android/gms/internal/measurement/p1;

    const-string v2, "measurement.service.audience.session_scoped_user_engagement"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/za;->b:Lcom/google/android/gms/internal/measurement/p1;

    const-string v2, "measurement.service.audience.session_scoped_event_aggregates"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/za;->c:Lcom/google/android/gms/internal/measurement/p1;

    const-string v2, "measurement.service.audience.remove_disabled_session_scoped_user_engagement"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/w1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/za;->d:Lcom/google/android/gms/internal/measurement/p1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/za;->a:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/za;->b:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/za;->c:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/za;->d:Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
