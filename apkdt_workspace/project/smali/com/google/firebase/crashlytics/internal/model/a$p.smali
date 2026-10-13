.class final Lcom/google/firebase/crashlytics/internal/model/a$p;
.super Ljava/lang/Object;
.source "AutoCrashlyticsReportEncoder.java"

# interfaces
.implements Lcom/google/firebase/m/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/e<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/internal/model/a$p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$p;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$p;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$p;->a:Lcom/google/firebase/crashlytics/internal/model/a$p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;Lcom/google/firebase/m/f;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;->a()Ljava/lang/Double;

    move-result-object v0

    const-string v1, "batteryLevel"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;->b()I

    move-result v0

    const-string v1, "batteryVelocity"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;I)Lcom/google/firebase/m/f;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;->f()Z

    move-result v0

    const-string v1, "proximityOn"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Z)Lcom/google/firebase/m/f;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;->d()I

    move-result v0

    const-string v1, "orientation"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;I)Lcom/google/firebase/m/f;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;->e()J

    move-result-wide v0

    const-string v2, "ramUsed"

    invoke-interface {p2, v2, v0, v1}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;J)Lcom/google/firebase/m/f;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;->c()J

    move-result-wide v0

    const-string p1, "diskUsed"

    invoke-interface {p2, p1, v0, v1}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;J)Lcom/google/firebase/m/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$p;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;Lcom/google/firebase/m/f;)V

    return-void
.end method
