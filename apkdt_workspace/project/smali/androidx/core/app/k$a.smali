.class public Landroidx/core/app/k$a;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/k$a;
    .locals 0
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Landroidx/core/app/k$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/k$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/core/app/k$a;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/k$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-object p1, p0, Landroidx/core/app/k$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/k$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iput-boolean p1, p0, Landroidx/core/app/k$a;->e:Z

    return-object p0
.end method

.method public a()Landroidx/core/app/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    new-instance v0, Landroidx/core/app/k;

    invoke-direct {v0, p0}, Landroidx/core/app/k;-><init>(Landroidx/core/app/k$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroidx/core/app/k$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/core/app/k$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/k$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Landroidx/core/app/k$a;->f:Z

    return-object p0
.end method
