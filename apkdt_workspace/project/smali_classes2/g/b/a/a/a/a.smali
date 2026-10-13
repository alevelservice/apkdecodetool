.class public Lg/b/a/a/a/a;
.super Ljava/lang/Object;
.source "FluttertoastPlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/b/a/a/a/a;->e:Landroid/content/Context;

    return-void
.end method

.method private a(F)F
    .locals 1

    .line 3
    iget-object v0, p0, Lg/b/a/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public static a(Lg/a/c/a/m$d;)V
    .locals 3

    .line 1
    new-instance v0, Lg/a/c/a/k;

    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v1

    const-string v2, "PonnamKarthik/fluttertoast"

    invoke-direct {v0, v1, v2}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lg/b/a/a/a/a;

    invoke-interface {p0}, Lg/a/c/a/m$d;->a()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lg/b/a/a/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x720fded6

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x5185d186

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "showToast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_3

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_6

    .line 3
    :cond_3
    iget-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 5
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    const-string v0, "msg"

    .line 6
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    .line 7
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gravity"

    .line 8
    invoke-virtual {p1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "bgcolor"

    .line 9
    invoke-virtual {p1, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    const-string v7, "textcolor"

    .line 10
    invoke-virtual {p1, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    const-string v8, "fontSize"

    .line 11
    invoke-virtual {p1, v8}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x514d33ab

    if-eq v8, v9, :cond_7

    const v9, 0x1c155

    if-eq v8, v9, :cond_6

    goto :goto_2

    :cond_6
    const-string v8, "top"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const-string v8, "center"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    :cond_8
    :goto_2
    const/16 v2, 0x11

    const/16 v8, 0x30

    if-eqz v3, :cond_a

    if-eq v3, v5, :cond_9

    const/16 v3, 0x50

    goto :goto_3

    :cond_9
    const/16 v3, 0x11

    goto :goto_3

    :cond_a
    const/16 v3, 0x30

    :goto_3
    const-string v9, "long"

    .line 13
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-eqz p1, :cond_b

    .line 14
    iget-object v9, p0, Lg/b/a/a/a/a;->e:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 15
    sget v10, Lg/b/a/a/a/c;->toast_custom:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 16
    sget v10, Lg/b/a/a/a/b;->text:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 17
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 19
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 20
    invoke-direct {p0, v6}, Lg/b/a/a/a/a;->a(F)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 21
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 23
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    new-instance p1, Landroid/widget/Toast;

    iget-object v0, p0, Lg/b/a/a/a/a;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    .line 25
    iget-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 26
    iget-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    invoke-virtual {p1, v9}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_4

    .line 27
    :cond_b
    iget-object p1, p0, Lg/b/a/a/a/a;->e:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    :goto_4
    if-ne v3, v2, :cond_c

    .line 28
    iget-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    invoke-virtual {p1, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_5

    :cond_c
    const/16 p1, 0x64

    if-ne v3, v8, :cond_d

    .line 29
    iget-object v0, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0, v3, v4, p1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_5

    .line 30
    :cond_d
    iget-object v0, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0, v3, v4, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 31
    :goto_5
    iget-object p1, p0, Lg/b/a/a/a/a;->f:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 32
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_6
    return-void
.end method
