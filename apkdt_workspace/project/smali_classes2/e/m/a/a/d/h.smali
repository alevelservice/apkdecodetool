.class public Le/m/a/a/d/h;
.super Ljava/lang/Object;
.source "LocationEngineRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/a/d/h$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:F

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>(Le/m/a/a/d/h$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Le/m/a/a/d/h$b;->a(Le/m/a/a/d/h$b;)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/a/d/h;->a:J

    .line 4
    invoke-static {p1}, Le/m/a/a/d/h$b;->b(Le/m/a/a/d/h$b;)I

    move-result v0

    iput v0, p0, Le/m/a/a/d/h;->b:I

    .line 5
    invoke-static {p1}, Le/m/a/a/d/h$b;->c(Le/m/a/a/d/h$b;)F

    move-result v0

    iput v0, p0, Le/m/a/a/d/h;->c:F

    .line 6
    invoke-static {p1}, Le/m/a/a/d/h$b;->d(Le/m/a/a/d/h$b;)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/a/d/h;->d:J

    .line 7
    invoke-static {p1}, Le/m/a/a/d/h$b;->e(Le/m/a/a/d/h$b;)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/a/d/h;->e:J

    return-void
.end method

.method synthetic constructor <init>(Le/m/a/a/d/h$b;Le/m/a/a/d/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/a/d/h;-><init>(Le/m/a/a/d/h$b;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/a/d/h;->c:F

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/a/d/h;->e:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/a/d/h;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/a/d/h;->d:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/a/d/h;->b:I

    return v0
.end method
