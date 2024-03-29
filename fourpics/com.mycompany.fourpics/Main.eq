/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
        SESprite upperLeft;
        SESprite upperRight;
        SESprite lowerLeft;
        SESprite lowerRight;
        SESprite uLText;
        double trans=0;
        
        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);
                
                add_sprite_for_color(Color.instance("black"), get_scene_width(), get_scene_height());
                rsc.prepare_image("green", "green", get_scene_width()*0.5, get_scene_height()*0.5);
                rsc.prepare_image("mario", "mario", get_scene_width()*0.5, get_scene_height()*0.5);
                rsc.prepare_image("mush", "mush", get_scene_width()*0.5, get_scene_height()*0.5);
                rsc.prepare_image("smile", "mushy", get_scene_width()*0.5, get_scene_height()*0.5);
                rsc.prepare_font("myfont", "arial bold color=white", 50);

                upperLeft = add_sprite_for_image(SEImage.for_resource("green"));
                upperRight = add_sprite_for_image(SEImage.for_resource("mario"));
                lowerLeft = add_sprite_for_image(SEImage.for_resource("mush"));
                lowerRight = add_sprite_for_image(SEImage.for_resource("smile"));
                

                upperLeft.move(0, 0);
                upperRight.move(get_scene_width()*0.5, 0);
                lowerLeft.move(0, get_scene_height()*0.5);
                lowerRight.move(get_scene_width()*0.5, get_scene_height()*0.5);

                uLText = add_sprite_for_text("Coffee helps you to CODE", "myfont");
                uLText.move(0,0);

        }

        public void on_key_press(String name, String str) {
                base.on_key_press(name, str);
                uLText.set_text("on_key_press");
                
        }

        public void on_key_release(String name, String str) {
                base.on_key_release(name, str);
                uLText.set_text("on_key_release");
                
        }

        public void on_pointer_press(SEPointerInfo pi) {
                base.on_pointer_press(pi);

                if(pi.is_inside(0, 0, get_scene_width()*0.5, get_scene_height()*0.5)) {
                        uLText.set_text("on_pointer_press");
                        uLText.move(0.25*get_scene_width()-uLText.get_width()*0.5, 0.25*get_scene_height()-uLText.get_height());
                        upperLeft.set_alpha(0.50);
                        upperRight.set_alpha(1);
                        lowerLeft.set_alpha(1);
                        lowerRight.set_alpha(1);
                }

                if(pi.is_inside(get_scene_width()*0.5, 0, get_scene_width()*0.5, get_scene_height()*0.5)) {
                        uLText.set_text("on_pointer_press");
                        uLText.move(0.75*get_scene_width()-uLText.get_width()*0.5, 0.25*get_scene_height()-uLText.get_height());
                        upperLeft.set_alpha(1);
                        upperRight.set_alpha(0.50);
                        lowerLeft.set_alpha(1);
                        lowerRight.set_alpha(1);
                }

                if(pi.is_inside(0, get_scene_height()*0.5, get_scene_width()*0.5, get_scene_height()*0.5)) {
                        uLText.set_text("on_pointer_press");
                        uLText.move(0.25*get_scene_width()-uLText.get_width()*0.5, 0.75*get_scene_height()-uLText.get_height());
                        upperLeft.set_alpha(1);
                        upperRight.set_alpha(1);
                        lowerLeft.set_alpha(0.50);
                        lowerRight.set_alpha(1);
                }

                if(pi.is_inside(get_scene_width()*0.5, get_scene_height()*0.5, get_scene_width()*0.5, get_scene_height()*0.5)) {
                        uLText.set_text("on_pointer_press");
                        uLText.move(0.75*get_scene_width()-uLText.get_width()*0.5, 0.75*get_scene_height()-uLText.get_height());
                        upperLeft.set_alpha(1);
                        upperRight.set_alpha(1);
                        lowerLeft.set_alpha(1);
                        lowerRight.set_alpha(0.50);
                }
                
                
        }

        public void set_alpha(double alpha) {
                trans =alpha;
                
        }

        public void cleanup() {
                base.cleanup();
        }
}

