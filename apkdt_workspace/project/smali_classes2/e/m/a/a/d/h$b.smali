.class public final Le/m/a/a/d/h$b;
.super Ljava/lang/Object;
.source "LocationEngineRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private b:I

.field private c:F

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/a/d/h$b;->a:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/m/a/a/d/h$b;->b:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/m/a/a/d/h$b;->c:F

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Le/m/a/a/d/h$b;->d:J

    .line 6
    iput-wide p1, p0, Le/m/a/a/d/h$b;->e:J

    return-void
.end method

.method static synthetic a(Le/m/a/a/d/h$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/a/d/h$b;->a:J

    return-wide v0
.end method

.method static synthetic b(Le/m/a/a/d/h$b;)I
    .locals 0

    .line 1
    iget p0, p0, Le/m/a/a/d/h$b;->b:I

    return p0
.end method

.method static synthetic c(Le/m/a/a/d/h$b;)F
    .locals 0

    .line 1
    iget p0, p0, Le/m/a/a/d/h$b;->c:F

    return p0
.end method

.method static synthetic d(Le/m/a/a/d/h$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/a/d/h$b;->d:J

    return-wide v0
.end method

.method static synthetic e(Le/m/a/a/d/h$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/a/d/h$b;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Le/m/a/a/d/h$b;
    .locals 0

    .line 2
    iput p1, p0, Le/m/a/a/d/h$b;->b:I

    return-object p0
.end method

.method public a(J)Le/m/a/a/d/h$b;
    .locals 0

    .line 3
    iput-wide p1, p0, Le/m/a/a/d/h$b;->e:J

    return-object p0
.end method

.method public a()Le/m/a/a/d/h;
    .locals 2

    .line 4
    new-instance v0, Le/m/a/a/d/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/m/a/a/d/h;-><init>(Le/m/a/a/d/h$b;Le/m/a/a/d/h$a;)V

    return-object v0
.end method

.method public b(J)Le/m/a/a/d/h$b;
    .locals 0

    .line 2
    iput-wide p1, p0, Le/m/a/a/d/h$b;->d:J

    return-object p0
.end method
